//
//  InputHashtagView.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/10/30.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then
import UITextView_Placeholder

final class InputHashtagView: UIView {

    var inputText: String {
        return textView.text ?? ""
    }

    private lazy var stackView = UIStackView(arrangedSubviews: [self.titleLabel,
                                                                self.textView]).then {
                                                                    $0.axis = .vertical
                                                                    $0.spacing = 8
    }

    private let titleLabel = UILabel().then {
        $0.text = "#해시태그"
        $0.font = .preferredFont(forTextStyle: .headline)
    }

    private let textView = UITextView().then {
        $0.placeholder = "#입력하기"
        $0.font = .preferredFont(forTextStyle: .footnote)
        $0.textContainer.lineFragmentPadding = 0
        $0.textContainerInset = .zero
        $0.isScrollEnabled = false
        $0.snp.makeConstraints {
            $0.height.greaterThanOrEqualTo(60)
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
    }

    private func setupView() {
        addSubview(stackView)

        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


