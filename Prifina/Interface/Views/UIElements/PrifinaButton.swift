//
//  PrifinaButton.swift
//  Prifina
//
//  Created by DW on 11/11/21.
//

import UIKit

struct PrifinaButtonConfiguration {
    let textFontFamily: Theme.FontFamilys
    let textSize: CGFloat
    let textColor: Theme.Colors
    let backgroundColor: Theme.Colors
    let cornerRadius: CGFloat
}

class PrifinaButton: UIButton {
    
    // MARK: - Properties
    enum ButtonConfiguration: Int {
        case button1 = 1
        case button2 = 2
    }
    
    // MARK: - Private Methods
    private func setButtonTheme(_ buttonConfiguration: PrifinaButtonConfiguration) {
        self.titleLabel?.font = UIFont(name: buttonConfiguration.textFontFamily.rawValue, size: buttonConfiguration.textSize)
        self.setTitleColor(buttonConfiguration.textColor.getUIColor(), for: .normal)
        self.backgroundColor = buttonConfiguration.backgroundColor.getUIColor()
        self.layer.cornerRadius = buttonConfiguration.cornerRadius
        self.layer.masksToBounds = true
    }
    
    // MARK: - Public Methods
    func prepareButtonWith(_ configuration: ButtonConfiguration) {
        var buttonConfiguration: PrifinaButtonConfiguration!
        switch configuration {
        case .button1:
            buttonConfiguration = PrifinaButtonConfiguration(textFontFamily: .openSansBold, textSize: 12, textColor: .cF5F8F7, backgroundColor: .c00847A, cornerRadius: 5)
        case .button2:
            buttonConfiguration = PrifinaButtonConfiguration(textFontFamily: .openSansItalic, textSize: 12, textColor: .c00847A, backgroundColor: .cFFFFFF, cornerRadius: 0)
        }
        setButtonTheme(buttonConfiguration)
    }
    
}
