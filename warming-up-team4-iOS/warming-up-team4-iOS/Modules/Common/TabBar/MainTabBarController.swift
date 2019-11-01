//
//  MainTabBarController.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/10/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit
import SwiftUI

import Then

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let feed = UIHostingController(rootView: FeedView(tabbarController: self))
        let category = UIHostingController(rootView: CategoryView())

        feed.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        category.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)

        let writeVC = WritePostViewController().then {
            $0.tabBarItem = .init(title: "글쓰기", image: .iconTabEdit, tag: 2)
        }

        let myPageVC = UINavigationController(rootViewController: MyPageViewController()).then {
            $0.tabBarItem = .init(title: "내정보", image: nil, tag: 3)
        }
       
        let tabBarList = [feed, category, writeVC, myPageVC]

        viewControllers = tabBarList
        // Do any additional setup after loading the view.

        delegate = UIApplication.shared.delegate as? UITabBarControllerDelegate


    }

}
