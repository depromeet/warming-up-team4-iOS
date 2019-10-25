//
//  HomeTabbedView.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/10/24.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI

struct HomeTabbedView: View {
    let items: [BottomBarItem] = [
        BottomBarItem(icon: "house.fill", title: "Home", color: .purple),
        BottomBarItem(icon: "heart", title: "Likes", color: .pink),
        BottomBarItem(icon: "magnifyingglass", title: "Search", color: .orange),
        BottomBarItem(icon: "person.fill", title: "Profile", color: .blue)
    ]


    @State private var selectedIndex: Int = 0
    var body: some View {
        NavigationView {
            TabView{
                
                    FeedView()
                    .tag(0)
                    .tabItem{
                        Text("Page1")
                    }
//                    .navigationBarTitle("")
//                    .navigationBarHidden(true)
               CategoryView()
                .tag(1)
                .tabItem {
                    Text("Page2")
                }
                .navigationBarTitle("ss")
                .navigationBarHidden(true)
            }.navigationBarTitle("ss")
            .navigationBarHidden(true)
                .padding(.top, -100)
            
           
        }.frame(alignment: .topLeading)
            
    }
}

struct HomeTabbedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabbedView()
    }
}
