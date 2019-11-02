//
//  MainTabBarController.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/10/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit
import SwiftUI
class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        let feed = UIHostingController(rootView: FeedView())
        let category = UIHostingController(rootView: CategoryView())
        
        feed.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        category.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)

       
        let tabBarList = [feed,category]
        self.hidesBottomBarWhenPushed = true
        viewControllers = tabBarList
        // Do any additional setup after loading the view.
    }
    

    func setupUI() {
        self.tabBar.backgroundColor = .white
    }
/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UINavigationController {
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        topViewController?.hidesBottomBarWhenPushed = true
    }
}
