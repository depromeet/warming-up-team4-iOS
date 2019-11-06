//
//  BoxedTextField.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/11/05.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then

final class BoxedTextField: UITextField {
    let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)

    override public func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override public func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override public func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    private func setupView() {
        layer.borderColor = UIColor.label.cgColor
        layer.borderWidth = 1
        font = .customFont(ofSize: 12, weight: .bold)
        snp.makeConstraints {
            $0.height.equalTo(45)
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


