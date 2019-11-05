//
//  UIFont+.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/11/05.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

extension UIFont {
    enum CustomFontWeight {
        case extraBold
        case bold
        case regular
        case light
    }

    static func customFont(ofSize fontSize: CGFloat, weight: CustomFontWeight) -> UIFont {
        var fontName: String = ""
        switch weight {
        case .extraBold:
            fontName = "NanumSquareOTF_acEB"
        case .bold:
            fontName = "NanumSquareOTF_acB"
        case .regular:
            fontName = "NanumSquareOTF_acR"
        case .light:
            fontName = "NanumSquareOTF_acL"
        }
        return UIFont(name: fontName, size: fontSize + 3)!
    }
}
