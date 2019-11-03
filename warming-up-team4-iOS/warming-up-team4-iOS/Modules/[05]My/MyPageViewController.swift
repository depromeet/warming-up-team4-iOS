//
//  MyPageViewController.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/11/01.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then

final class MyPageViewController: UIViewController {

    private let scrollView = UIScrollView().then {
        $0.keyboardDismissMode = .interactive
    }

    private lazy var verticalStackView = UIStackView(arrangedSubviews: [
        self.titleLabel,
        ProfileInfoView(),
        MyPageItemsView(),
        MyPageItemsView(),
        MyPageItemsView()
    ]).then {
        $0.axis = .vertical
        $0.spacing = 32
    }

    private let titleLabel = MyPageTitleLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
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
        $0.left.right.equalTo(view.safeAreaLayoutGuide)
        $0.bottom.equalToSuperview().inset(200)
      }

        navigationController?.navigationBar.do {
            $0.isTranslucent = false
            $0.shadowImage = UIImage()
        }

        navigationItem.do {
            let notiBarButtonItem = UIBarButtonItem(image: .iconAccept, style: .plain, target: self, action: #selector(didTapNoti))
            $0.rightBarButtonItem = notiBarButtonItem
            $0.title = "MY PAGE"
        }
    }

    @objc private func didTapNoti() {
        print("didTapNoti")
    }
}
