//
//  PrifinaTheme.swift
//  Prifina
//
//  Created by DW on 10/11/21.
//

import UIKit

struct Theme {
    enum Colors: String {
        case c000000 = "#000000"
        case c263238 = "#263238"
        case cFFFFFF = "#FFFFFF"
        case c00847A = "#00847A"
        case cF5F8F7 = "#F5F8F7"
        case cC3C2C2 = "#C3C2C2"
        
        func getUIColor() -> UIColor {
            return UIColor(hexString: self.rawValue)
        }
    }
    
    enum FontFamilys: String {
        case openSansBold = "OpenSans-Bold"
        case openSansBoldItalic = "OpenSans-BoldItalic"
        case openSansExtraBold = "OpenSans-ExtraBold"
        case openSansExtraBoldItalic = "OpenSans-ExtraBoldItalic"
        case openSansItalic = "OpenSans-Italic"
        case openSansLight = "OpenSans-Light"
        case openSansLightItalic = "OpenSans-LightItalic"
        case openSansMedium = "OpenSans-Medium"
        case openSansMediumItalic = "OpenSans-MediumItalic"
        case openSansRegular = "OpenSans-Regular"
        case openSansSemiBold = "OpenSans-SemiBold"
        case openSansSemiBoldItalic = "OpenSans-SemiBoldItalic"
    }
}
/*
weights
 400 regular
 600 medium
 700 bold
 */
