//
//  PrifinaLabel.swift
//  Prifina
//
//  Created by DW on 10/11/21.
//

import UIKit

struct PrifinaLabelConfiguration {
    let textFontFamily: Theme.FontFamilys
    let textSize: CGFloat
    let textColor: Theme.Colors
}

class PrifinaLabel: UILabel {
    
    // MARK: - Properties
    enum LabelConfiguration: Int {
        case label1 = 1
        case label2 = 2
        case label3 = 3
        case label4 = 4
        case label5 = 5
        case label6 = 6
        case label7 = 7
    }
    
    // MARK: - Private Methods
    private func setLabelTheme(_ labelConfiguration: PrifinaLabelConfiguration) {
        self.font = UIFont(name: labelConfiguration.textFontFamily.rawValue, size: labelConfiguration.textSize)
        self.textColor = labelConfiguration.textColor.getUIColor()
    }
    
    // MARK: - Public Methods
    func prepareLabelWith(_ configuration: LabelConfiguration) {
        var labelConfiguration: PrifinaLabelConfiguration!
        switch configuration {
        case .label1:
            labelConfiguration = PrifinaLabelConfiguration(textFontFamily: .openSansMedium, textSize: 18, textColor: .c000000)
        case .label2:
            labelConfiguration = PrifinaLabelConfiguration(textFontFamily: .openSansRegular, textSize: 12, textColor: .c000000)
        case .label3:
            labelConfiguration = PrifinaLabelConfiguration(textFontFamily: .openSansMedium, textSize: 20, textColor: .c000000)
        case .label4:
            labelConfiguration = PrifinaLabelConfiguration(textFontFamily: .openSansMedium, textSize: 12, textColor: .c000000)
        case .label5:
            labelConfiguration = PrifinaLabelConfiguration(textFontFamily: .openSansRegular, textSize: 10, textColor: .c000000)
        case .label6:
            labelConfiguration = PrifinaLabelConfiguration(textFontFamily: .openSansMedium, textSize: 16, textColor: .c000000)
        case .label7:
            labelConfiguration = PrifinaLabelConfiguration(textFontFamily: .openSansMedium, textSize: 14, textColor: .c000000)
        }
        setLabelTheme(labelConfiguration)
    }
}

/*
weights
 400 regular
 600 medium
 700 bold
 */
