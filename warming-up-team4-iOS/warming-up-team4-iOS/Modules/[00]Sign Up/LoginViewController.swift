//
//  LoginViewController.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/11/05.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then

final class LoginViewController: UIViewController {
    private lazy var vStackView = UIStackView(arrangedSubviews: [self.logoImageView,
                                                                 self.emailTextField,
                                                                 self.passwordTextField,
                                                                 self.loginButton
    ]).then {
        $0.setCustomSpacing(82, after: self.logoImageView)
        $0.axis = .vertical
        $0.spacing = 16
    }

    private let logoImageView = UIImageView(image: .logo).then {
        $0.contentMode = .scaleAspectFit
    }

    private let emailTextField = BoxedTextField().then {
        $0.placeholder = "아이디를 입력해주세요"
        $0.keyboardType = .emailAddress
    }

    private let passwordTextField = BoxedTextField().then {
        $0.placeholder = "비밀번호를 입력해주세요"
        $0.isSecureTextEntry = true
    }

    private let loginButton = BoxedButton().then {
        $0.setTitle("LOGIN", for: .normal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        view.backgroundColor = .systemBackground
        view.addSubview(vStackView)
        vStackView.snp.makeConstraints {
            $0.left.right.equalTo(view.readableContentGuide).inset(24)
            $0.centerY.equalToSuperview().offset(-50)
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
