//
//  PrifinaContact.swift
//  Prifina
//
//  Created by DW on 12/11/21.
//

import Foundation
import ContactsUI

class PrifinaContact {
    
    // MARK: Properties
    static let shared = PrifinaContact()
    var contactAuthorizationStatus: CNAuthorizationStatus {
        return CNContactStore.authorizationStatus(for: .contacts)
    }
    var allLocalContactsArr = [ContactDetails]()
    var allServerContactArr = [GetUserAllContactQuery.Data.AddressBookApp]()
    var isSyncing = false
    
    enum ContactEmailLabel: String {
        case home = "_$!<Home>!$_"
        case work = "_$!<Work>!$_"
    }
    
    // MARK: - Init Methods
    private init() {}
    
    // MARK: - Private Methods
    private func fetchAllLocalContacts() async -> Bool {
        guard contactAuthorizationStatus == .authorized else {
            debugPrint("Not authorised contact")
            return false
        }
        debugPrint("Fetch local contacts")
        var contactArr = [ContactDetails]()
        let store = CNContactStore()
        let keys = [CNContactGivenNameKey,
                    CNContactFamilyNameKey,
                    CNContactPhoneNumbersKey,
                    CNContactThumbnailImageDataKey,
                    CNContactEmailAddressesKey,
                    CNContactPostalAddressesKey         
        ]
        let request = CNContactFetchRequest(keysToFetch: keys as [CNKeyDescriptor])
        do {
            try store.enumerateContacts(with: request, usingBlock: { (contact, _) in
                let name = contact.givenName + " " + contact.familyName
                let phoneNumber = contact.phoneNumbers.first?.value.stringValue
                let homeEmail = contact.emailAddresses.first(where: {$0.label == ContactEmailLabel.home.rawValue})?.value as String?
                let workEmail = contact.emailAddresses.first(where: {$0.label == ContactEmailLabel.work.rawValue})?.value as String?
                var addressStr = ""
                if let address = contact.postalAddresses.first?.value {
                    addressStr = (address.street.isEmpty ? "" : (address.street + ", ")) +
                    (address.subLocality.isEmpty ? "" : (address.subLocality + ", ")) +
                    (address.city.isEmpty ? "" : (address.city + ", ")) +
                    (address.subAdministrativeArea.isEmpty ? "" : (address.subAdministrativeArea + ", ")) +
                    (address.state.isEmpty ? "" : (address.state + ", ")) +
                    (address.postalCode.isEmpty ? "" : (address.postalCode + ", ")) +
                    (address.country.isEmpty ? "" : (address.country + ", ")) +
                    (address.isoCountryCode.isEmpty ? "" : (address.isoCountryCode))
                }
                
                contactArr.append( ContactDetails(id: contact.identifier,
                                                  name: name,
                                                  phoneNumber: phoneNumber,
                                                  homeEmail: homeEmail,
                                                  workEmail: workEmail,
                                                  address: addressStr,
                                                  thumbnailImageData: nil//contact.thumbnailImageData
                                                 )
                )
            })
            debugPrint("Fetch local contacts Success")
            dump(contactArr)
            allLocalContactsArr = contactArr
            return true
        } catch let error {
            debugPrint("Fetch local contacts Fail", error)
            return false
        }
    }
    
    private func upsertContact(localContact: ContactDetails) async -> Bool {
        guard let uploadedByUid = LoggedInUser.shared.user?.userId else {
            debugPrint("Logged in user id is nil")
            return false
        }
        debugPrint("Upserting contact")
        dump(localContact)
        let createData = AddressBookAppCreateInput(uploadedByUid: uploadedByUid,
                                                   name: localContact.name,
                                                   country: localContact.address,
                                                   mobile: localContact.phoneNumber,
                                                   email: localContact.homeEmail,
                                                   contactId: localContact.id)
        let updateData = AddressBookAppUpdateInput(uploadedByUid: uploadedByUid,
                                                   name: localContact.name,
                                                   country: localContact.address,
                                                   mobile: localContact.phoneNumber,
                                                   email: localContact.homeEmail,
                                                   contactId: localContact.id)
        let upsertData = AddressBookAppUpsertInput(create: createData, update: updateData)
        
        return await withCheckedContinuation { continuation in
            Network.shared.apollo.perform(mutation: UpsertAndPublishAddressBookMutation(data: upsertData, contactId: localContact.id)) { result in
                switch result {
                case .success:
                    debugPrint("Contact upsert success")
                    continuation.resume(returning: true)
                case .failure(let error):
                    debugPrint("Contact upsert fail", error)
                    continuation.resume(returning: false)
                }
            }
        }
    }

    
    // MARK: - Public Methods
    func contactsRequestPermission(_ completion: @escaping ((Bool) -> Void)) {
        let store = CNContactStore()
        store.requestAccess(for: .contacts) { (granted, error) in
            if let error = error {
                debugPrint("Contact access failed", error)
                completion(false)
            }
            debugPrint("Contact access", granted)
            completion(granted)
        }
    }
    
    func fetchAllServerContacts() async -> Bool {
        guard let uploadedByUid = LoggedInUser.shared.user?.userId else {
            debugPrint("Logged in user id is nil")
            return false
        }
        debugPrint("Fetch server contacts uploaded by uid", uploadedByUid )
        return await withCheckedContinuation { continuation in
            Network.shared.apollo.fetch(query: GetUserAllContactQuery(uploadedByUid: uploadedByUid), cachePolicy: .fetchIgnoringCacheCompletely) { result in
                switch result {
                case .success(let allContacts):
                    debugPrint("Fetch server contacts success")
                    dump(allContacts.data)
                    self.allServerContactArr = allContacts.data?.addressBookApps ?? []
                    continuation.resume(returning: true)
                case .failure(let error):
                    debugPrint("Fetch server contacts failed", error)
                    continuation.resume(returning: false)
                }
            }
        }
    }
    
    private func isContactUpdated(localContact: ContactDetails, serverContact: ServerContactDetails.DocumentInStage) -> Bool {
        if localContact.name != serverContact.name ||
            localContact.phoneNumber != serverContact.mobile ||
            localContact.address != serverContact.country ||
            localContact.homeEmail != serverContact.email {
            debugPrint("Changes found in contact")
            return true
        } else {
            debugPrint("NO changes found in contact")
            return false
        }
    }
    
    func startSyncing() {
        guard !isSyncing else {
            debugPrint(">>>> Already Syncing Contact.")
            return
        }
        isSyncing = true
        debugPrint(">>>> Start Contact Syncing.")
        Task(priority: .high) {
            let isAllLocalContactFetched = await fetchAllLocalContacts()
            let isAllServerContactFetched = await fetchAllServerContacts()
            guard isAllLocalContactFetched && isAllServerContactFetched else {
                debugPrint("Contact fetch failed ", isAllLocalContactFetched, isAllServerContactFetched)
                return
            }
            debugPrint(">>>> All contact fetched LOCAL AND SERVER.")
            await allLocalContactsArr.asyncForEach { localContact in
                debugPrint("---> Process Contact", localContact.name ?? "nilll", localContact.id)
                if let matchedServerContact = allServerContactArr.first(where: {$0.documentInStages.first?.contactId == localContact.id})?.documentInStages.first {
                    debugPrint("Contact already uploaded check if contact details changed", matchedServerContact.id)
                    let isContactUpdated = isContactUpdated(localContact: localContact, serverContact: matchedServerContact)
                    if isContactUpdated {
                        debugPrint("UPDATE Contact")
                        _ = await upsertContact(localContact: localContact)
                    } else {
                        debugPrint("IGNORE Contact")
                    }
                } else {
                    debugPrint("UPLOAD Contact")
                    _ = await upsertContact(localContact: localContact)
                }
            }
            isSyncing = false
            debugPrint(">>>> Contact Syncing Finish.")
        }
    }
}
