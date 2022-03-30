//
//  ListContactViewModel.swift
//  Prifina
//
//  Created by DW on 12/11/21.
//

import Foundation

class ListContactViewModel {
    
    // MARK: - Properties
    var contactArr: [GetUserAllContactQuery.Data.AddressBookApp]?
    
    // MARK: - Private Methods
    func fetchContactsQL(_ completion: @escaping ((Bool) -> Void)) {
       guard let uploadedByUid = LoggedInUser.shared.user?.userId else {
            debugPrint("Logged in user id is nil")
           completion(false)
            return
        }
        debugPrint("Fetch contacts uploaded by uid", uploadedByUid )
        Network.shared.apollo.fetch(query: GetUserAllContactQuery(uploadedByUid: uploadedByUid), cachePolicy: .returnCacheDataAndFetch) { result in
            switch result {
            case .success(let allContacts):
                debugPrint("Fetch contacts success")
                dump(allContacts.data?.addressBookApps)
                self.contactArr = allContacts.data?.addressBookApps
                completion(true)
            case .failure(let error):
                debugPrint("Fetch contacts failed", error)
                completion(false)
            }
        }
    }
    
}
