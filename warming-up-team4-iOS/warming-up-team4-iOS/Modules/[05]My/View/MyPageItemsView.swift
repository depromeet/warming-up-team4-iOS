//
//  MyPageItemsView.swift
//  warming-up-team4-iOS
//
//  Created by Yunsu Guk on 2019/11/03.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then

private let cellID = "itemCellID"
final class MyPageItemsView: YSView {
  private let titleLabel = UILabel().then {
    $0.text = "내가 올린 물품"
  }

  private lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
    $0.scrollDirection = .horizontal
  }).then {
    $0.delegate = self
    $0.dataSource = self
    $0.register(ItemCell.self, forCellWithReuseIdentifier: cellID)
  }

  override func setupView() {
    super.setupView()

    addSubviews(titleLabel, collectionView)

    titleLabel.snp.makeConstraints {
      $0.top.equalToSuperview().inset(2)
      $0.left.right.equalToSuperview().inset(Constants.appLeftInset)
    }

    collectionView.snp.makeConstraints {
      $0.top.equalTo(titleLabel.snp.bottom).offset(12)
      $0.left.right.bottom.equalToSuperview()
      $0.height.greaterThanOrEqualTo(140)
    }
  }

}

extension MyPageItemsView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
    cell.backgroundColor = .red
    return cell
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return .init(width: 90, height: 140)
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return .init(top: 0, left: Constants.appLeftInset, bottom: 0, right: Constants.appLeftInset)
  }
}

final class ItemCell: YSCell {
  private let imageView = UIImageView()

  private let titleLabel = UILabel().then {
    $0.text = "물건 제목"
  }

  private let dateLabel = UILabel().then {
    $0.text = "9999.99.99"
  }

  override func setupView() {
    super.setupView()

    contentView.addSubviews(imageView, titleLabel, dateLabel)

    imageView.snp.makeConstraints {
      $0.top.left.right.equalToSuperview()
      $0.height.equalTo(100)
    }

    titleLabel.snp.makeConstraints {
      $0.top.equalTo(imageView.snp.bottom).offset(2)
      $0.left.right.equalToSuperview().inset(4)
    }

    dateLabel.snp.makeConstraints {
      $0.top.equalTo(titleLabel.snp.bottom)
      $0.left.right.equalTo(titleLabel)
      $0.bottom.lessThanOrEqualToSuperview()
    }
  }

}
