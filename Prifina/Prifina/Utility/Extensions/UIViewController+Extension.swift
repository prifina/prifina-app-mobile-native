//
//  UIViewController+Extension.swift
//  Prifina
//
//  Created by DW on 10/11/21.
//

import Foundation
import UIKit
import SVProgressHUD

enum StoryBoardNames: String {
    case onboarding = "Onboarding"
    case home = "Home"
}

extension UIViewController {
    class func instantiateFromStoryboard(_ name: StoryBoardNames) -> Self {
        return instantiateFromStoryboardHelper(name.rawValue)
    }

    private class func instantiateFromStoryboardHelper<T>(_ name: String) -> T {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        guard let controller = storyboard.instantiateViewController(withIdentifier: String(describing: self)) as? T else {
            fatalError("VC with identifier \(String(describing: T.self)) in storyboard \(name) not found.")
        }
        return controller
    }
}

extension UIViewController {
    func showAlert(title: String? = Constant.defaultAlertTitle, message: String?) {
        let alertController = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
}

// MARK: - ProgressView Helpers
extension UIViewController {
    func showProgressView(message: String? = nil) {
        SVProgressHUD.setDefaultStyle(.dark)
        SVProgressHUD.show(withStatus: message)
    }
    
    func hideProgressView() {
        SVProgressHUD.dismiss()
    }
}
