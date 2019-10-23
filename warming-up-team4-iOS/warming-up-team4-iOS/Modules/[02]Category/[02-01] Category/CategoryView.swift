//
//  CategoryView.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/10/22.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        
        VStack() {
            AppNavigationView()
            LargeTitleView()
                .frame(height: 100)
            List {
                VStack(spacing: 10) {
                    CategoryCelView()
                    CategoryCelView()
                    CategoryCelView()
                    CategoryCelView()
                }
                
                
            }.padding(EdgeInsets.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                .frame(alignment: .bottomLeading)
        }.navigationBarTitle(Text("Title"))
        .navigationBarHidden(true)
        .padding(.leading, 10)
        .padding(.trailing, 10)
        
        
    }
    
//    var content: some View {
//        
//        
//    }
}

struct CategoryCelView: View {
    
    var body: some View {
        HStack {
            VStack(spacing: 20) {
                Image("feed_image")
                .resizable()
                .scaledToFit()
                Text("식품")
            }.padding(.bottom, 10)
                .border(Color("app_list_cotent_color"))
               // .border(width: 1)
            VStack(spacing: 20) {
                Image("feed_image")
                .resizable()
                .scaledToFit()
                Text("여성의류")
                
            }.padding(.bottom, 10)
            .border(Color("app_list_cotent_color"))
            VStack(spacing: 20) {
                Image("feed_image")
                .resizable()
                .scaledToFit()
                Text("남성의류")
            }.padding(.bottom, 10)
            .border(Color("app_list_cotent_color"))
        }
        
        
    }
}
struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
