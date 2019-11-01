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
private let leftInset: CGFloat = 32
private let rightInset: CGFloat = 20

final class WritePostViewController: UIViewController {

    private let scrollView = UIScrollView().then {
        $0.keyboardDismissMode = .interactive
    }

    private lazy var verticalStackView = UIStackView(arrangedSubviews: [self.titleTextField,
                                                                        self.descriptTextView,
                                                                        self.imageSelectView,
                                                                        self.inputChangePlaceView,
                                                                        self.selectCategoryView,
                                                                        self.inputHashtagView
    ]).then {
        $0.axis = .vertical
        $0.spacing = 16
    }

    // 제목
    private let titleTextField = UITextField().then {
        $0.placeholder = "제목을 입력해주세요"
        $0.font = .preferredFont(forTextStyle: .title1)
        $0.snp.makeConstraints {
            $0.height.equalTo(30)
        }
    }

    // 설명
    private let descriptTextView = UITextView().then {
        $0.placeholder = "어떤 물품인지 설명해주세요"
        $0.font = .preferredFont(forTextStyle: .footnote)
        $0.isScrollEnabled = false
        $0.textContainer.lineFragmentPadding = 0
        $0.textContainerInset = .zero
        $0.snp.makeConstraints {
            $0.height.greaterThanOrEqualTo(80)
        }
    }

    // 사진 선택
    private lazy var imageSelectView = ImageMultipleSelectView(in: self)

    // 교환 장소
    private let inputChangePlaceView = InputChangePlaceView()

    // 카테고리 선택
    private let selectCategoryView = SelectCategoryView()

    // 해시태그
    private let inputHashtagView = InputHashtagView()

    // deco
    private let titleUnderlineView = UIView().then {
        $0.backgroundColor = .black
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setupNavBar()
    }

    private func setupNavBar() {
        title = "내 물품 등록하기"

        navigationController?.navigationBar.do {
            $0.isTranslucent = false
            $0.shadowImage = UIImage()
        }

        let closeBarButton = UIBarButtonItem(image: .iconClose, style: .plain, target: self, action: #selector(didTapClose))
        let acceptBarButton = UIBarButtonItem(image: .iconAccept, style: .plain, target: self, action: #selector(didTapAccept))
        navigationItem.leftBarButtonItem = closeBarButton
        navigationItem.rightBarButtonItem = acceptBarButton
    }

    @objc private func didTapClose() {
        dismiss(animated: true, completion: nil)
    }

    @objc private func didTapAccept() {
        print("didTapAccept")
    }

    private func setupViews() {
        view.backgroundColor = .systemBackground
        view.addSubview(scrollView)

        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }

        scrollView.addSubview(verticalStackView)

        verticalStackView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(32)
            $0.left.equalTo(view.safeAreaLayoutGuide).offset(leftInset)
            $0.right.equalTo(view.safeAreaLayoutGuide).offset(-rightInset)
            $0.bottom.equalToSuperview().inset(200)
        }

        titleTextField.addSubview(titleUnderlineView)
        titleUnderlineView.snp.makeConstraints {
            $0.top.equalTo(titleTextField.snp.bottom)
            $0.left.equalTo(titleTextField)
            $0.right.equalTo(view)
            $0.height.equalTo(1)
        }

    }

}
