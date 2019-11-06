//
//  BoxedButton.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/11/05.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then

final class BoxedButton: UIButton {
    private func setupView() {
        backgroundColor = .main
        titleLabel?.font = .customFont(ofSize: 15, weight: .extraBold)
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

