//
//  UIViewController+.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/11/05.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

extension UIViewController {
    func setCustomFontTitle(text: String) {
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.customFont(ofSize: 14, weight: .extraBold)]
        navigationItem.title = text
    }

    func setupNavigationUI() {
        navigationController?.navigationBar.do {
            $0.isTranslucent = false
            $0.shadowImage = UIImage()
            $0.barTintColor = .systemBackground
            $0.tintColor = .label

        }
    }
}
