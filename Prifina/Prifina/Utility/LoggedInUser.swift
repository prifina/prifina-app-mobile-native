//
//  LoggedInUser.swift
//  Prifina
//
//  Created by DW on 28/03/22.
//

import Foundation
import Amplify

class LoggedInUser {
    
    //MARK: - Properties
    static let shared = LoggedInUser()
    var user = Amplify.Auth.getCurrentUser()
    
    var isContactSyncEnabled: Bool {
        get {
            return UserDefaults.standard.bool(forKey: "isContactSyncEnabled")
        }    
        set(newValue) {
            debugPrint("Set contact syncing enabled", newValue)
            UserDefaults.standard.set(newValue, forKey: "isContactSyncEnabled")
        }
    }
    
    //MARK: - Init
    private init() {}
    
}
