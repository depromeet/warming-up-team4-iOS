//
//  SelectCategoryCollectionView.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/10/25.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then

private let cellID = "postCategoryCellID"

final class SelectCategoryCollectionView: UICollectionView {

    private func setupView() {
        register(PostCategoryCell.self, forCellWithReuseIdentifier: cellID)
    }

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)

        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

final class PostCategoryCell: UICollectionViewCell {

    override var intrinsicContentSize: CGSize {
        return CGSize(width: 60, height: 60)
    }

    private lazy var stackView = UIStackView(arrangedSubviews: [self.imageView,
                                                                self.categoryLabel]).then {
                                                                    $0.spacing = 4
                                                                    $0.axis = .vertical
    }

    private let imageView = UIImageView(image: UIImage(named: "feed_image")).then {
        $0.contentMode = .scaleAspectFit
    }

    private let categoryLabel = UILabel().then {
        $0.font = .preferredFont(forTextStyle: .caption2)
        $0.text = "애완동물"
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

