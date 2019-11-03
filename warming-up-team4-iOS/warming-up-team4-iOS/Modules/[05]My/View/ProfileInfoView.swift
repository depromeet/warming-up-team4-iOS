//
//  ProfileInfoView.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/11/01.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

private let profileImageButtonWidth: CGFloat = 76
final class ProfileInfoView: UIView {

    private lazy var stackView = UIStackView(arrangedSubviews: [
        self.profileImageButton,
        self.infoLabel,
        self.schoolLabel,
        self.dealRateLabel
    ]).then {
        $0.axis = .vertical
        $0.spacing = 8
        $0.alignment = .center
      $0.setCustomSpacing(32, after: self.infoLabel)
    }

    private let profileImageButton = UIButton().then {
        $0.backgroundColor = .gray
        $0.layer.cornerRadius = profileImageButtonWidth / 2
      $0.setImage(.iconCamera, for: .normal)
        $0.snp.makeConstraints {
            $0.size.equalTo(profileImageButtonWidth)
        }
    }

    private let infoLabel = UILabel().then {
        $0.font = .preferredFont(forTextStyle: .footnote)
        $0.textAlignment = .center
        $0.text = "TST기네스\nkrgoodnews@gmail.com"
        $0.numberOfLines = 0
    }

  private let schoolLabel = UILabel().then {
    $0.font = .preferredFont(forTextStyle: .headline)
    $0.text = "서울대학교"
  }

  private let dealRateLabel = UILabel().then {
    $0.font = .preferredFont(forTextStyle: .footnote)
    $0.text = "거래 성사율 999%"
  }

    private func setupView() {
        addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
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
