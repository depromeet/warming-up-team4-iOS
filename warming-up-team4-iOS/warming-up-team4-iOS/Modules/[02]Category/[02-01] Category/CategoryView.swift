//
//  CategoryView.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/10/22.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI
import Combine
struct CategoryView: View {
    var body: some View {
        NavigationView {
            VStack(spacing:0) {
                AppNavigationView()
                LargeTitleView()
                    .frame(height: 100)
                    .padding(.bottom,10)
                
                List {
                    
                    //NavigationLink(destination:
//
                    HStack(spacing: 0) {
                        VStack(spacing: 10) {
                            HStack {
                                CategoryCelView()
                                CategoryCelView()
                                CategoryCelView()
                            }
                            HStack {
                                CategoryCelView()
                                CategoryCelView()
                                CategoryCelView()
                            }
                            HStack {
                                CategoryCelView()
                                CategoryCelView()
                                CategoryCelView()
                            }
                            HStack {
                                CategoryCelView()
                                CategoryCelView()
                                CategoryCelView()
                            }
                            
                            
                        }.accessibility(hidden: true)
                            .layoutPriority(1000)
                        NavigationLink(destination: FeedDetailView(dismissParent: {})) {
//                              Spacer()
                            EmptyView()
//                            .frame(width: 0, height: 0)
//                            .layoutPriority(0)
                           }
                        
                    }
                           
                        
                  //  }

                }.padding(EdgeInsets.init(top: 0, leading: -10, bottom: 0, trailing: -30))
                
                    .frame(alignment: .bottomLeading)
            }.navigationBarTitle(Text("Title"))
            .navigationBarHidden(true)
                .padding(.leading, 10)
            .padding(.trailing, 10)
            
        }.frame(alignment: .topLeading)
        
        
        
    }
    

}

struct CategoryCelView: View {
    
    var body: some View {
        //HStack {
            
//            VStack(spacing: 20) {
//                Image("feed_image")
//                    .resizable()
//                    .scaledToFit()
//                Text("여성의류")
//
//            }.padding(.bottom, 10)
//                .border(Color("app_list_cotent_color"))
               // .border(width: 1)
        
                                 VStack(spacing: 20) {
                                     Image("feed_image")
                                     .resizable()
                                     .scaledToFit()
                                     Text("여성의류")
                                  .font(Font.custom("NanumSquareOTF_acR", size: 14)) .foregroundColor(Color("app_category_tile_color"))
                                     
                                 }.padding(.bottom, 10)
//                                 .border(Color("app_list_cotent_color"))
                           //      }
            
//            VStack(spacing: 20) {
//                Image("feed_image")
//                .resizable()
//                .scaledToFit()
//                Text("남성의류")
//            }.padding(.bottom, 10)
//            .border(Color("app_list_cotent_color"))
       }
        
        
  //  }
}
struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
