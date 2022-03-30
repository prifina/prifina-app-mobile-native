//
//  ContactModel.swift
//  Prifina
//
//  Created by DW on 12/11/21.
//

import UIKit

typealias ServerContactDetails = GetUserAllContactQuery.Data.AddressBookApp

struct ContactDetails {
    let id: String
    let name: String?
    let phoneNumber: String?
    let homeEmail: String?
    let workEmail: String?
    let address: String?
    let thumbnailImageData: Data?
    
    func getThumbnailUIImage() -> UIImage {
        guard let thumbnailImageData = thumbnailImageData else {
            return UIImage(named: "person")!
        }
        
        return UIImage(data: thumbnailImageData) ?? UIImage(named: "person")!
    }
}
