//
//  SignInVC.swift
//  Prifina
//
//  Created by DW on 10/11/21.
//

import UIKit
import Amplify

class SignInVC: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var titleLabel: PrifinaLabel!
    @IBOutlet weak var dontHaveAccLabel: PrifinaLabel!
    @IBOutlet weak var usernameTextField: PrifinaTextField!
    @IBOutlet weak var passwordTextField: PrifinaTextField!
    @IBOutlet weak var signInButton: PrifinaButton!
    @IBOutlet weak var singUpButton: PrifinaButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    // MARK: - Private Methods
    private func prepareUI() {
        titleLabel.prepareLabelWith(.label3)
        dontHaveAccLabel.prepareLabelWith(.label2)
        signInButton.prepareButtonWith(.button1)
        singUpButton.prepareButtonWith(.button2)
        usernameTextField.prepareTextFieldWith(.textfield1)
        usernameTextField.setLeftImageView(UIImage(named: "personOutline")!)
        passwordTextField.prepareTextFieldWith(.textfield1)
        passwordTextField.setLeftImageView(UIImage(named: "lockOutline")!)
        passwordTextField.setRightButton(withImage: UIImage.init(named: "passwordHide")!, selectedImage: UIImage.init(named: "passwordShow")!)
        passwordTextField.textFieldDelegate = self
    }
    
    // MARK: - Action Methods
    @IBAction func signInButtonAction(_ sender: PrifinaButton) {
        self.view.endEditing(true)
        if ReachabilityManager.shared.status == .unreachable {
            self.showAlert(title: Constant.defaultAlertTitle, message: Constant.internetNotAvailable)
            return
        }
        let username = usernameTextField.text!
        let password = passwordTextField.text!
        
        if username.count == 0 {
            self.showAlert(title: Constant.defaultAlertTitle, message: "Please enter Username.")
            return
        } else if password.count == 0 {
            self.showAlert(title: Constant.defaultAlertTitle, message: "Please enter password.")
            return
        }
        self.showProgressView(message: nil)
        Amplify.Auth.signIn(username: usernameTextField.text!, password: passwordTextField.text!, options: nil) {[weak self] result in
            DispatchQueue.main.async {
                self?.hideProgressView()
                switch result {
                case .success(let signInResult):
                    if case .confirmSignUp  = signInResult.nextStep {
                        let verificationController = EnterVerificationViewController.instantiateFromStoryboard(.onboarding)
                        verificationController.verificationType = .afterSignUp
                        verificationController.username = username
                        verificationController.needToResendCode = true
                        self?.navigationController?.pushViewController(verificationController, animated: true)
                    } else if case .confirmSignInWithSMSMFACode = signInResult.nextStep {
                        let verificationController = EnterVerificationViewController.instantiateFromStoryboard(.onboarding)
                        verificationController.verificationType = .afterSignIn
                        verificationController.username = username
                        verificationController.password = password
                        self?.navigationController?.pushViewController(verificationController, animated: true)
                    }
                case .failure(let error):
                    debugPrint("An error occurred while registering a user \(error)")
                    self?.showAlert(title: Constant.defaultErrorTitle, message: error.errorDescription)
                }
            }
        }
    }
    
    @IBAction func signUpButtonAction(_ sender: PrifinaButton) {
        let signUpVC = SignUpViewController.instantiateFromStoryboard(.onboarding)
        navigationController?.pushViewController(signUpVC, animated: true)
    }
}

// MARK: - PrifinaTextFieldDelegate Methods
extension SignInVC: PrifinaTextFieldDelegate {
    func prifinaTextField(_ textField: PrifinaTextField, didClickedRightButton button: UIButton) {
        if textField == passwordTextField {
            if button.isSelected {
                passwordTextField.isSecureTextEntry = false
            } else {
                passwordTextField.isSecureTextEntry = true
            }
        }
    }
}
