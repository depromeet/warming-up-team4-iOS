//
//  YSView.swift
//  warming-up-team4-iOS
//
//  Created by Yunsu Guk on 2019/11/03.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

class YSView: UIView {
  override init(frame: CGRect) {
    super.init(frame: frame)

    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupView() {
    backgroundColor = .systemBackground
  }
}
