//
//  ListContactViewModel.swift
//  Prifina
//
//  Created by DW on 12/11/21.
//

import Foundation
import Contacts

class ListContactViewModel {
    
    // MARK: - Properties
    private(set) var contactArr = [ContactDetails]()
    
    // MARK: - Private Methods
    func fetchContacts(_ completion: @escaping ((Bool) -> Void)) {
        PrifinaContact().fetchAllContacts { contacts in
            guard let contactsArr = contacts else {
                debugPrint("Contact Arr nil")
                completion(false)
                return
            }
            self.contactArr = contactsArr
            completion(true)
        }
    }
    
}
