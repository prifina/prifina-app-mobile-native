//
//  EnterVerificationViewController.swift
//  Prifina
//
//  Created by DW on 11/11/21.
//

import UIKit
import Amplify

class EnterVerificationViewController: UIViewController {
    
    enum VerificationType {
        case afterSignUp, afterSignIn
    }
    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: PrifinaLabel!
    @IBOutlet weak var signInButton: PrifinaButton!
    @IBOutlet weak var resendCodeButton: PrifinaButton!
    
    @IBOutlet var codeTextFieldArr: [UITextField]!
    
    @IBOutlet weak var textFieldCode1: UITextField!
    @IBOutlet weak var textFieldCode2: UITextField!
    @IBOutlet weak var textFieldCode3: UITextField!
    @IBOutlet weak var textFieldCode4: UITextField!
    @IBOutlet weak var textFieldCode5: UITextField!
    @IBOutlet weak var textFieldCode6: UITextField!
    
    // MARK: - Properties
    var verificationType: VerificationType = .afterSignIn
    var username = ""
    var password = ""
    var needToResendCode = false
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
        textFieldCode1.delegate = self
        textFieldCode1.addTarget(self, action: #selector(textFieldDidUpdateText(_:)), for: .editingChanged)
        textFieldCode2.delegate = self
        textFieldCode2.addTarget(self, action: #selector(textFieldDidUpdateText(_:)), for: .editingChanged)
        textFieldCode3.delegate = self
        textFieldCode3.addTarget(self, action: #selector(textFieldDidUpdateText(_:)), for: .editingChanged)
        textFieldCode4.delegate = self
        textFieldCode4.addTarget(self, action: #selector(textFieldDidUpdateText(_:)), for: .editingChanged)
        textFieldCode5.delegate = self
        textFieldCode5.addTarget(self, action: #selector(textFieldDidUpdateText(_:)), for: .editingChanged)
        textFieldCode6.delegate = self
        textFieldCode6.addTarget(self, action: #selector(textFieldDidUpdateText(_:)), for: .editingChanged)
        if needToResendCode {
            resendCodeButton.sendActions(for: .touchUpInside)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textFieldCode1.becomeFirstResponder()
    }
    
    // MARK: - Private Methods
    private func prepareUI() {
        titleLabel.prepareLabelWith(.label3)
        signInButton.prepareButtonWith(.button1)
        resendCodeButton.prepareButtonWith(.button2)
    }
    
    private func verifyAfterSignUp() {
        self.showProgressView(message: nil)
        let code = textFieldCode1.text! + textFieldCode2.text! + textFieldCode3.text! + textFieldCode4.text! + textFieldCode5.text! + textFieldCode6.text!
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: code) {[weak self] result in
            DispatchQueue.main.async {
                self?.hideProgressView()
                switch result {
                case .success:
                    debugPrint("Verification success.")
                    let alertController = UIAlertController.init(title: "Success!", message: "SignUp verification successful. Now You can Login.", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction.init(title: "OK", style: .default, handler: { _ in
                        if let controllers = self?.navigationController?.viewControllers.filter({ controller in
                            return controller is SignInVC
                        }), let loginController = controllers.first {
                            self?.navigationController?.popToViewController(loginController, animated: true)
                        }
                    }))
                    self?.present(alertController, animated: true, completion: nil)
                case .failure(let error):
                    debugPrint("An error occurred while registering a user \(error)")
                    self?.showAlert(title: Constant.defaultErrorTitle, message: error.errorDescription)
                }
            }
        }
    }
    
    private func verifyAfterSignIn() {
        self.showProgressView(message: nil)
        let code = textFieldCode1.text! + textFieldCode2.text! + textFieldCode3.text! + textFieldCode4.text! + textFieldCode5.text! + textFieldCode6.text!
        Amplify.Auth.confirmSignIn(challengeResponse: code, options: nil) {[weak self] result in
            DispatchQueue.main.async {
                self?.hideProgressView()
                switch result {
                case .success:
                    let signInSuccessVC = SignInSuccessViewController.instantiateFromStoryboard(.onboarding)
                    self?.navigationController?.pushViewController(signInSuccessVC, animated: true)
                case .failure(let error):
                    debugPrint("An error occurred while registering a user \(error)")
                    self?.showAlert(title: Constant.defaultErrorTitle, message: error.errorDescription)
                }
            }
        }
    }
    
    // MARK: - Action Methods
    @IBAction func signInButtonAction(_ sender: PrifinaButton) {
        self.view.endEditing(true)
        if ReachabilityManager.shared.status == .unreachable {
            self.showAlert(title: Constant.defaultAlertTitle, message: Constant.internetNotAvailable)
            return
        }
        if textFieldCode1.text!.count == 0 || textFieldCode2.text!.count == 0 || textFieldCode3.text!.count == 0 || textFieldCode4.text!.count == 0 || textFieldCode5.text!.count == 0 || textFieldCode6.text!.count == 0 {
            self.showAlert(message: "Please enter code.")
            return
        }
        if verificationType == .afterSignUp {
            self.verifyAfterSignUp()
        } else if verificationType == .afterSignIn {
            self.verifyAfterSignIn()
        }
    }
    
    @IBAction func resendCodeAction(_ sender: PrifinaButton) {
        self.view.endEditing(true)
        if ReachabilityManager.shared.status == .unreachable {
            self.showAlert(title: Constant.defaultAlertTitle, message: Constant.internetNotAvailable)
            return
        }
        self.showProgressView(message: nil)
        if verificationType == .afterSignUp {
            Amplify.Auth.resendSignUpCode(for: username, options: nil) {[weak self] result in
                DispatchQueue.main.async {
                    self?.hideProgressView()
                    switch result {
                    case .success:
                        self?.showAlert(message: "Code resent.")
                    case .failure(let error):
                        self?.showAlert(title: Constant.defaultErrorTitle, message: error.errorDescription)
                    }
                }
            }
        } else if verificationType == .afterSignIn {
            self.showProgressView(message: nil)
            Amplify.Auth.signIn(username: username, password: password, options: nil) {[weak self] result in
                DispatchQueue.main.async {
                    self?.hideProgressView()
                    switch result {
                    case .success:
                        self?.showAlert(message: "Code resent.")
                    case .failure(let error):
                        debugPrint("An error occurred while registering a user \(error)")
                        self?.showAlert(title: Constant.defaultErrorTitle, message: error.errorDescription)
                    }
                }
            }
        }
    }
    
    // MARK: - TextField text change event
    @objc func textFieldDidUpdateText(_ textField: UITextField) {
        if textField.text!.count == 0 {
            return
        }
        if textField == textFieldCode1 {
            textFieldCode2.becomeFirstResponder()
        } else if textField == textFieldCode2 {
            textFieldCode3.becomeFirstResponder()
        } else if textField == textFieldCode3 {
            textFieldCode4.becomeFirstResponder()
        } else if textField == textFieldCode4 {
            textFieldCode5.becomeFirstResponder()
        } else if textField == textFieldCode5 {
            textFieldCode6.becomeFirstResponder()
        }
    }
}

// MARK: - UITextFieldDelegate methods
extension EnterVerificationViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text, let textRange = Range(range, in: text) {
            let updatedText = text.replacingCharacters(in: textRange, with: string)
            if updatedText.count == 1 {
                return true
            } else if updatedText.count > 1 {
                return false
            }
            return true
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
