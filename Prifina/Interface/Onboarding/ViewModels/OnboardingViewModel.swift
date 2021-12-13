//
//  OnboardingViewModel.swift
//  Prifina
//
//  Created by DW on 11/11/21.
//

import UIKit

class OnboardingViewModel {
    
    // MARK: - Properties
    let featureDetailsArr: [FeatureDetails] = [
        FeatureDetails(image: UIImage(named: "laptopLady")!, title: "Use two-factor authentication", description: "Verify your login in the personal data cloud mobile app using the two-factor authentication method; to strengthen the security of your account."),
        FeatureDetails(image: UIImage(named: "phoneMan")!, title: "Sync your address book", description: "Sync your address book from your phone to the personal data cloud. Any changes made on your phone will also appear on the mobile app."),
        FeatureDetails(image: UIImage(named: "cloudServices")!, title: "Data hub for your mobile apps", description: "Your authorized mobile apps on your device can read & write data to your personal data cloud.")
    ]
}
