//
//  SelectCategoryView.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/10/30.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then

private let cellID = "postCategoryCellID"
final class SelectCategoryView: UIView {

    private let titleLabel = UILabel().then {
        $0.text = "카테고리 선택"
        $0.font = .preferredFont(forTextStyle: .headline)
    }

    private lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout()).then {
        $0.backgroundColor = .clear
        $0.delegate = self
        $0.dataSource = self
        $0.register(PostCategoryCell.self, forCellWithReuseIdentifier: cellID)
    }

    private func setupView() {
        addSubviews(titleLabel, collectionView)
        titleLabel.snp.makeConstraints {
            $0.top.left.equalToSuperview()
        }

        collectionView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(4)
            $0.left.right.bottom.equalToSuperview()
        }
        snp.makeConstraints {
            $0.height.greaterThanOrEqualTo(260)
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

extension SelectCategoryView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.frame.width / 5
        let cellHeight: CGFloat = 70
        return CGSize(width: cellWidth, height: cellHeight)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}


final class PostCategoryCell: UICollectionViewCell {

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
        $0.textAlignment = .center
        $0.setContentCompressionResistancePriority(.required, for: .vertical)
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

