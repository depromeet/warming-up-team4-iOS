//
//  FeedView.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/10/20.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI
import Combine



struct FeedView: View {
    
    @State var users = ["Munon", "Gomin", "Durup"]
    let height: CGFloat = 100.0
    var body: some View {

       NavigationView {
        
           VStack() {
            
           AppNavigationView()
            .padding(.top)
            .frame(alignment: .topLeading)
                .frame(height: 60)
            content
       
           }.frame(alignment: .topLeading)
            .padding(.top, 0)
            
            .padding(.leading, 35)
        .padding(.trailing,0)
        .navigationBarTitle(Text("Title")) // Add this line
        .navigationBarHidden(true)
        
        }
    }
    
    var content: some View {
    
        List {
            //ScrollView {
            
            
            LargeTitleView()
            ForEach(users, id:  \.self) { user in
                        NavigationLink(destination:
                        
                        FeedDetailView(dismissParent: {})) {
                                FeedCellView()
                }
            }
        }
    }
}
//.font(Font.custom("Montserrat-Bold", size: 60.0))

struct FeedCellView: View {
    
    var body: some View {
//        NavigationLink(destination: FeedDetailView(dismissParent: {})) {
            VStack(alignment: .leading, spacing: 6) {
                Image("feed_image")
                    .resizable()
                    .frame(height: 294)
                    .clipped()
                Spacer()
                    .frame(height: 9)
                Text("베드트레이 교환 원해요")
                    .font(Font.custom("NanumSquareOTF_acB", size: 28))
                
                HStack(alignment: .bottom, spacing: 0){
                    Text("23명")
                    .foregroundColor(Color("app_point_color"))
                    .font(Font.custom("NanumSquareOTF_acEB", size: 14))
                    Text("이 교환원해요")
                    .foregroundColor(Color("app_point_color"))
                    .font(Font.custom("NanumSquareOTF_acR", size: 10))
                }
                
                Text("침대에서 정말 사용하기 편해요. 색상도 이쁘고 원목이라..")
                    .foregroundColor(Color("app_list_cotent_color"))
                    .font(Font.custom("NanumSquareOTF_acR", size: 12))
                
                
            }.padding(.leading, 0)
                .padding(.bottom, 20)
                .padding(.trailing, -35)
        .edgesIgnoringSafeArea(.trailing)
       // }
        
            
        }
    }


struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
