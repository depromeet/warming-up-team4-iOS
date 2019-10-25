//
//  InputChangePlaceView.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/10/25.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then

final class InputChangePlaceView: UIView {

    var inputText: String {
        return textView.text ?? ""
    }

    private lazy var stackView = UIStackView(arrangedSubviews: [self.titleLabel,
                                                                self.textView]).then {
                                                                    $0.axis = .vertical
                                                                    $0.spacing = 8
    }

    private let titleLabel = UILabel().then {
        $0.text = "교환 장소"
        $0.font = .preferredFont(forTextStyle: .headline)
    }

    private let textView = UITextView().then {
        $0.text = "교환을 원하는 장소를 입력해주세요"
        $0.font = .preferredFont(forTextStyle: .footnote)
        $0.isScrollEnabled = false
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


