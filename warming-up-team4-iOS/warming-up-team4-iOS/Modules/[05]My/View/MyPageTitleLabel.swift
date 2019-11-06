//
//  MyPageTitleLabel.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/11/01.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then

final class MyPageTitleLabel: UILabel {

    private func setupView() {
//        font = .preferredFont(forTextStyle: .title3)
        font = .customFont(ofSize: 20, weight: .extraBold)
        text = "안녕하세요\n기네스님:)"
        numberOfLines = 2
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

  override func drawText(in rect: CGRect) {
    let inset = UIEdgeInsets(top: 0,
                             left: Constants.appLeftInset,
                             bottom: 0,
                             right: Constants.appLeftInset)

    super.drawText(in: rect.inset(by: inset))
  }
}
