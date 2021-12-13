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
    var contactAuthorizationStatus: CNAuthorizationStatus {
        return CNContactStore.authorizationStatus(for: .contacts)
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
    
    func fetchAllContacts(_ completion: @escaping (([ContactDetails]?) -> Void)) {
        guard contactAuthorizationStatus == .authorized else {
            debugPrint("Not authorised contact")
            completion(nil)
            return
        }
        debugPrint("Fetching contacts")
        var contactArr = [ContactDetails]()
        let store = CNContactStore()
        let keys = [CNContactGivenNameKey,
                    CNContactFamilyNameKey,
                    CNContactPhoneNumbersKey,
                    CNContactThumbnailImageDataKey
        ]
        let request = CNContactFetchRequest(keysToFetch: keys as [CNKeyDescriptor])
        do {
            try store.enumerateContacts(with: request, usingBlock: { (contact, _) in
                contactArr.append( ContactDetails(firstName: contact.givenName,
                                                  lastName: contact.familyName,
                                                  phoneNumber: contact.phoneNumbers.first?.value.stringValue ?? "",
                                                  thumbnailImageData: contact.thumbnailImageData
                                                 )
                )
            })
            completion(contactArr)
        } catch let error {
            debugPrint("Failed to enumerate contacts", error)
            completion(nil)
        }
    }
}
