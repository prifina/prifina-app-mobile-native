//
//  SignUpViewController.swift
//  Prifina
//
//  Created by DW on 11/11/21.
//

import UIKit
import Amplify

class SignUpViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: PrifinaLabel!
    @IBOutlet weak var alreadyHaveAccLabel: PrifinaLabel!
    @IBOutlet weak var usernameTextField: PrifinaTextField!
    @IBOutlet weak var emailTextField: PrifinaTextField!
    @IBOutlet weak var phoneNumberTextField: PrifinaTextField!
    @IBOutlet weak var passwordTextField: PrifinaTextField!
    @IBOutlet weak var singUpButton: PrifinaButton!
    @IBOutlet weak var signInButton: PrifinaButton!
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    // MARK: - Private Methods
    private func prepareUI() {
        titleLabel.prepareLabelWith(.label3)
        alreadyHaveAccLabel.prepareLabelWith(.label2)
        singUpButton.prepareButtonWith(.button1)
        signInButton.prepareButtonWith(.button2)
        usernameTextField.prepareTextFieldWith(.textfield1)
        usernameTextField.setLeftImageView(UIImage(named: "personOutline")!)
        emailTextField.prepareTextFieldWith(.textfield1)
        emailTextField.setLeftImageView(UIImage(named: "emailIcon")!)
        phoneNumberTextField.prepareTextFieldWith(.textfield1)
        phoneNumberTextField.setLeftImageView(UIImage(named: "phoneIcon")!)
        passwordTextField.prepareTextFieldWith(.textfield1)
        passwordTextField.setLeftImageView(UIImage(named: "lockOutline")!)
        passwordTextField.setRightButton(withImage: UIImage.init(named: "passwordHide")!, selectedImage: UIImage.init(named: "passwordShow")!)
        passwordTextField.textFieldDelegate = self
    }
    
    // MARK: - Action Methods
    @IBAction func signInButtonAction(_ sender: PrifinaButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signUpButtonAction(_ sender: PrifinaButton) {
        if ReachabilityManager.shared.status == .unreachable {
            self.showAlert(title: Constant.defaultAlertTitle, message: Constant.internetNotAvailable)
            return
        }
        if usernameTextField.text!.count == 0 {
            self.showAlert(title: Constant.defaultAlertTitle, message: "Please enter Username.")
            return
        } else if usernameTextField.text!.count < 4 {
            self.showAlert(title: Constant.defaultAlertTitle, message: "Username should at least contain 4 characters.")
            return
        } else if emailTextField.text!.count == 0 {
            self.showAlert(title: Constant.defaultAlertTitle, message: "Please enter Email.")
            return
        } else if !emailTextField.text!.isValidEmail() {
            self.showAlert(title: Constant.defaultAlertTitle, message: "Please enter valid Email.")
            return
        } else if phoneNumberTextField.text!.count == 0 {
            self.showAlert(title: Constant.defaultAlertTitle, message: "Please enter Phone Number.")
            return
        } else if !phoneNumberTextField.text!.isValidPhoneNumber() {
            self.showAlert(title: Constant.defaultAlertTitle, message: "Please enter valid Phone Number starting with + followed by country code.")
            return
        } else if passwordTextField.text!.count == 0 {
            self.showAlert(title: Constant.defaultAlertTitle, message: "Please enter Password.")
            return
        } else if !passwordTextField.text!.isValidPassword() {
            self.showAlert(title: Constant.defaultAlertTitle, message: "Password should at least contain 8 characters and must contain 1 lowercase letter, 1 uppercase letter, 1 number and 1 special character.")
            return
        }
        self.showProgressView(message: "Signing up...")
        self.signUp(username: usernameTextField.text!, password: passwordTextField.text!, email: emailTextField.text!, phoneNumber: phoneNumberTextField.text!)
    }
    
    func signUp(username: String, password: String, email: String, phoneNumber: String) {
        self.view.endEditing(true)
        let userAttributes = [AuthUserAttribute(.email, value: email), AuthUserAttribute(.phoneNumber, value: phoneNumber)]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        Amplify.Auth.signUp(username: username, password: password, options: options) {[weak self] result in
            DispatchQueue.main.async {
                self?.hideProgressView()
                switch result {
                case .success(let signUpResult):
                    if case let .confirmUser(deliveryDetails, additionalInfo) = signUpResult.nextStep {
                        debugPrint("Delivery details \(String(describing: deliveryDetails)), addidional info = \((String(describing: additionalInfo)))")
                        let verificationController = EnterVerificationViewController.instantiateFromStoryboard(.onboarding)
                        verificationController.verificationType = .afterSignUp
                        verificationController.username = username
                        self?.navigationController?.pushViewController(verificationController, animated: true)
                    } else {
                        debugPrint("SignUp Complete")
                    }
                case .failure(let error):
                    debugPrint("An error occurred while registering a user \(error)")
                    self?.showAlert(title: Constant.defaultErrorTitle, message: error.errorDescription)
                }
            }
        }
    }
}

// MARK: - PrifinaTextFieldDelegate Methods
extension SignUpViewController: PrifinaTextFieldDelegate {
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
