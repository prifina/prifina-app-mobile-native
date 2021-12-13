//
//  ContactModel.swift
//  Prifina
//
//  Created by DW on 12/11/21.
//

import UIKit

struct ContactDetails {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let thumbnailImageData: Data?
    
    func getThumbnailUIImage() -> UIImage {
        guard let thumbnailImageData = thumbnailImageData else {
            return UIImage(named: "person")!
        }
        
        return UIImage(data: thumbnailImageData) ?? UIImage(named: "person")!
    }
}
