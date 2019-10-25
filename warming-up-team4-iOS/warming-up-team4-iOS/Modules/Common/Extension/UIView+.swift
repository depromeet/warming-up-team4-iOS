//
//  UIView+.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/10/25.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for subview in views {
            addSubview(subview)
        }
    }
}
