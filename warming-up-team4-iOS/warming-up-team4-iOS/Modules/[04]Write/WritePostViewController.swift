//
//  WritePostViewController.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/10/25.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then

private let cellID = "postCategoryCellID"
final class WritePostViewController: UIViewController {

    private let scrollView = UIScrollView().then {
        $0.backgroundColor = .systemOrange
    }

    private lazy var verticalStackView = UIStackView(arrangedSubviews: [self.titleTextField,
                                                                        self.descriptTextView,
                                                                        self.inputChangePlaceView,
                                                                        self.categoriesCollectionView
    ]).then {
        $0.axis = .vertical
        $0.spacing = 16
        $0.backgroundColor = .systemTeal
    }

    private let titleTextField = UITextField().then {
        $0.placeholder = "제목을 입력해주세요"
        $0.font = .preferredFont(forTextStyle: .title1)
        $0.backgroundColor = .systemGray
        $0.snp.makeConstraints {
            $0.height.equalTo(30)
        }
    }

    private let descriptTextView = UITextView().then {
        $0.text = "어떤 물품인지 설명해주세요"
        $0.font = .preferredFont(forTextStyle: .footnote)
        $0.backgroundColor = .systemPink
        $0.isScrollEnabled = false
        $0.snp.makeConstraints {
            $0.height.greaterThanOrEqualTo(80)
        }
    }

    private let inputChangePlaceView = InputChangePlaceView()

    private let categoriesCollectionView = SelectCategoryCollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout()).then {
        $0.isScrollEnabled = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()

        for _ in 1 ..< 100 {
            let vw = UIButton(type: .system)
            vw.setTitle("Button", for: .normal)
            verticalStackView.addArrangedSubview(vw)
        }
    }

    private func setupViews() {
        title = "내 물품 등록하기"

        view.addSubview(scrollView)

        scrollView.translatesAutoresizingMaskIntoConstraints = false

        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }

        scrollView.addSubview(verticalStackView)

        verticalStackView.snp.makeConstraints {
            $0.top.bottom.equalTo(self.scrollView).inset(32)
            $0.left.equalTo(view).offset(32)
            $0.right.equalTo(view).offset(-20)
            $0.width.equalTo(self.scrollView)
        }
        categoriesCollectionView.delegate = self
        categoriesCollectionView.dataSource = self
        categoriesCollectionView.register(PostCategoryCell.self, forCellWithReuseIdentifier: cellID)

        categoriesCollectionView.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.height.greaterThanOrEqualTo(500)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        categoriesCollectionView.reloadData()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.contentSize = CGSize(width: verticalStackView.frame.width, height: verticalStackView.frame.height)
    }
}

extension WritePostViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 60)
    }
}
