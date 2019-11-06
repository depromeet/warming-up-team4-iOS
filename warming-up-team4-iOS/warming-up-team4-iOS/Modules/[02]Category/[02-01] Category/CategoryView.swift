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
            VStack(alignment: .leading,spacing:0) {
                AppNavigationView()
                LargeTitleView()
                    .frame(height: 100)
                    .padding(.bottom,10)
                
                List {
                    
                    //NavigationLink(destination:
//
                    HStack(alignment: .center,spacing: 0) {
                        VStack(alignment: .leading,spacing: 10) {
                            HStack {
                                CategoryCelView(categoryImageName: "category_food")
                                CategoryCelView(categoryImageName: "category_women_clothes")
                                CategoryCelView(categoryImageName: "category_man_clothes")
                            }
                            HStack {
                                CategoryCelView(categoryImageName: "category_cosmetic")
                                CategoryCelView(categoryImageName: "category_daily_necessity")
                                CategoryCelView(categoryImageName: "category_book")
                            }
                            HStack {
                                CategoryCelView(categoryImageName: "category_electronic")
                                CategoryCelView(categoryImageName: "category_furniture")
                                CategoryCelView(categoryImageName: "category_pet")
                                
                            }
                            
                            HStack {
                                CategoryCelView(categoryImageName: "")
                                
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
    
    init() {
        UITableView.appearance().tableFooterView = UIView()

        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }

}
extension List {
  func separatorStyle(_ style: UITableViewCell.SeparatorStyle) -> Self {
    UITableView.appearance().separatorStyle = style
    return self
   }
}
struct CategoryCelView: View {
    var categoryImageName: String
    var body: some View {

        
                                 VStack(spacing: 20) {
                                     Image(categoryImageName)
                                    .resizable()
                                    .scaledToFit()
                                  
                                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 45, alignment: .center)
                                     Text("여성의류")
                                  .font(Font.custom("NanumSquareOTF_acR", size: 14)) .foregroundColor(Color("app_category_tile_color"))
                                     
                                 }.padding(.bottom, 10)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 120, alignment: .leading)
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
