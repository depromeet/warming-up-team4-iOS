//
//  SignUpViewController.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/11/05.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then

final class SignUpViewController: YSViewController {

    private lazy var vStackView = UIStackView(arrangedSubviews: [self.nicknameTitleLabel,
                                                                 self.nicknameTextField,
                                                                 self.emailTitleLabel,
                                                                 self.emailTextField,
                                                                 self.passwordTitleLabel,
                                                                 self.passwordTextField,
                                                                 self.passwordConfirmTextField,
                                                                 self.signUpButton
    ]).then {
        $0.axis = .vertical
        $0.spacing = 8
        $0.setCustomSpacing(16, after: self.nicknameTextField)
        $0.setCustomSpacing(16, after: self.emailTextField)
        $0.setCustomSpacing(16, after: self.passwordConfirmTextField)
    }

    private let nicknameTitleLabel = UILabel().then {
        $0.font = .customFont(ofSize: 12, weight: .bold)
        $0.text = "닉네임"
    }
    
    private let nicknameTextField = BoxedTextField().then {
        $0.placeholder = "닉네임을 입력해주세요"
    }

    private let emailTitleLabel = UILabel().then {
        $0.font = .customFont(ofSize: 12, weight: .bold)
        $0.text = "아이디 (학교 이메일)"
    }

    private let emailTextField = BoxedTextField().then {
        $0.placeholder = "이메일을 입력해주세요"
        $0.keyboardType = .emailAddress
    }

    private let passwordTitleLabel = UILabel().then {
        $0.font = .customFont(ofSize: 12, weight: .bold)
        $0.text = "비밀번호"
    }

    private let passwordTextField = BoxedTextField().then {
        $0.placeholder = "비밀번호를 입력해주세요"
        $0.isSecureTextEntry = true
    }

    private let passwordConfirmTextField = BoxedTextField().then {
        $0.placeholder = "비밀번호를 확인해주세요"
        $0.isSecureTextEntry = true
    }

    private lazy var signUpButton = BoxedButton().then {
        $0.setTitle("가입하기", for: .normal)
      $0.addTarget(self, action: #selector(didTapSignUp), for: .touchUpInside)
    }

  @objc private func didTapSignUp() {
    let tabBarVC = MainTabBarController().then {
      $0.modalPresentationStyle = .fullScreen
    }
    present(tabBarVC, animated: true, completion: nil)
  }

    override func setupViews() {
        super.setupViews()

        setupNavigationUI()
        setCustomFontTitle(text: "회원가입")

        let closeBarButton = UIBarButtonItem(image: R.image.iconClose(), style: .plain, target: self, action: #selector(didTapClose))

        navigationItem.leftBarButtonItem = closeBarButton

        view.addSubview(vStackView)
        vStackView.snp.makeConstraints {
            $0.left.right.equalTo(view.readableContentGuide).inset(24)
            $0.centerY.equalToSuperview().offset(-50)
        }
    }

    @objc private func didTapClose() {
        print("didTapClose")
    }
}
