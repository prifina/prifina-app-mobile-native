//
//  PrifinaTextField.swift
//  Prifina
//
//  Created by DW on 12/11/21.
//

import UIKit

struct PrifinaTextFieldConfiguration {
    let textFontFamily: Theme.FontFamilys
    let textSize: CGFloat
    let textColor: Theme.Colors
    let borderWidth: CGFloat
    let borderColor: Theme.Colors
    let cornerRadius: CGFloat
}

@objc protocol PrifinaTextFieldDelegate: AnyObject {
    @objc optional func prifinaTextField(_ textField: PrifinaTextField, didClickedRightButton button: UIButton)
}

class PrifinaTextField: UITextField {
    
    // MARK: - Properties
    enum TextFieldConfiguration: Int {
        case textfield1 = 1
    }
    weak var textFieldDelegate: PrifinaTextFieldDelegate?
    
    // MARK: - Private Methods
    private func setTextFieldTheme(_ textFieldConfiguration: PrifinaTextFieldConfiguration) {
        self.font = UIFont(name: textFieldConfiguration.textFontFamily.rawValue, size: textFieldConfiguration.textSize)
        
        self.layer.borderWidth = textFieldConfiguration.borderWidth
        self.layer.borderColor = textFieldConfiguration.borderColor.getUIColor().cgColor
        
        self.layer.cornerRadius = textFieldConfiguration.cornerRadius
        self.layer.masksToBounds = true
    }
    
    @objc private func rightButtonClicked(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        self.textFieldDelegate?.prifinaTextField?(self, didClickedRightButton: sender)
    }
    
    // MARK: - Public Methods
    func prepareTextFieldWith(_ configuration: TextFieldConfiguration) {
        var textFieldConfiguration: PrifinaTextFieldConfiguration!
        switch configuration {
        case .textfield1:
            textFieldConfiguration = PrifinaTextFieldConfiguration(textFontFamily: .openSansMedium, textSize: 14, textColor: .c000000, borderWidth: 1, borderColor: .c00847A, cornerRadius: 5)
        }
        setTextFieldTheme(textFieldConfiguration)
    }
    
    func setLeftImageView(_ image: UIImage) {
        let iconImageView = UIImageView(frame: CGRect(x: 10, y: 5, width: 18, height: 20))
        iconImageView.image = image
        iconImageView.contentMode = .scaleAspectFit
//        iconImageView.backgroundColor = .blue
        let iconContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        iconContainerView.backgroundColor = .green
        iconContainerView.addSubview(iconImageView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightButton(withImage image: UIImage, selectedImage: UIImage) {
        let button = UIButton.init(type: .custom)
        button.frame = CGRect.init(x: 0.0, y: 0.0, width: 30.0, height: 30.0)
        button.imageView?.contentMode = .scaleAspectFit
        button.setImage(image, for: .normal)
        button.setImage(selectedImage, for: .selected)
        button.addTarget(self, action: #selector(rightButtonClicked(sender:)), for: .touchUpInside)
        
        let buttonContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        buttonContainerView.addSubview(button)
        rightView = buttonContainerView
        rightViewMode = .always
    }
}
