//
//  FeedDetailView.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/10/21.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI

struct FeedDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    

    @State var dismissParent: () -> Void
    var body: some View {
    
        VStack(alignment: .center,spacing: 0) {
            
            topBar
            contentView
            divider
            bottomBar
                .frame(alignment: .bottomLeading)
        }.navigationBarTitle(Text("Title"))
        .navigationBarHidden(true)
            .onAppear {
              //  self.tabbarController.setTabBarVisible(visible: false, animated: false)
               
                
        }
        
    }
    func popParent() {
        presentationMode.wrappedValue.dismiss()
        DispatchQueue.main.asyncAfter(deadline: .now()) { self.dismissParent() }
    }
    
    var divider: some View {
      Rectangle()
          .fill(Color("app_list_cotent_color"))
        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 1)
        .blur(radius: 1.0)
    }
}

extension FeedDetailView {
    
    var topBar: some View {
        HStack (alignment: .bottom) {
            Button(action: {self.popParent()}) {
                Text("close")
                // self.link.presented?.value = false
            }
            Spacer()
            Button(action: {}) {
                Text("share")
            }
            
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .frame(height: 30)
    }
//    var divider: some View {
//          Rectangle()
//              .fill(Color("app_list_cotent_color"))
//            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 1)
//            .blur(radius: 1.0)
//        }
    
    var bottomBar: some View {
        HStack{
                     Text("대학생님께")
                     Spacer()
                         .frame(width: 30)
                     Button(action: {
                         print("tap")
                     }) {
                         Text("교환신청하기")
                         .font(Font.custom("NanumSquareOTF_acB", size: 16))
                     }.frame(width: 130, height: 41)
                     .background(Color("app_point_color"))
                         .foregroundColor(Color.white)
                     .cornerRadius(5)
                         
                 }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 35, alignment: .bottom)
    }
    
    
}


extension FeedDetailView {
    var contentView: some View {
        ScrollView {
            Image("feed_image")
                .resizable()
                .frame(height: 400)
                .clipped()
            VStack(alignment: .leading, spacing: 8) {
                Text("#가구#원목#인테리어")
                    .foregroundColor(Color("app_point_color"))
                    .font(Font.custom("NanumSquareOTF_acR", size: 17))
                Text("베드트레이 교환원해요.")
                    .lineLimit(Int.max)
                    .fixedSize(horizontal: false, vertical: true)
                    .layoutPriority(1000)
                    .font(Font.custom("NanumSquareOTF_acEB", size: 34))
                Text("2019.10.16")
                    .foregroundColor(Color("app_list_cotent_color"))
                    .font(Font.custom("NanumSquareOTF_acR", size: 17))
                Text("치즈랑 매운맛 있어요.\n귀찮을떄 요리해먹기 딱이에요.\n보관도 뚜껑만 잘 닫아주면 돼요!\n다른 식품도 다 받으니까 편하게 신청해주세요~~~")
                    .foregroundColor(Color("app_content_color"))
                .font(Font.custom("NanumSquareOTF_acR", size: 16))
                    .lineLimit(Int.max)
                    .fixedSize(horizontal: false, vertical: true)
                .lineSpacing(5)
                    .layoutPriority(1000)
                    
                HStack {
                    Text("by")
                    Image("feed_image")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipped()
                        .cornerRadius(30)
                        .foregroundColor(.purple)
                    Text("대학생")
                    Text("성사율80%")
                    .foregroundColor(Color("app_point_color"))
                    .font(Font.custom("NanumSquareOTF_acR", size: 14))
                }.padding(.top,10)
                .padding(.bottom,10)
                Text("대학생님의 다른 물건")
                .font(Font.custom("NanumSquareOTF_acR", size: 18))
                .padding(.top,10)
                .padding(.bottom,15)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        AnotherItemView()
                        AnotherItemView()
                        AnotherItemView()
                        AnotherItemView()
                        AnotherItemView()
                        AnotherItemView()
                        
                    }
                }.frame(height: 180, alignment: .topLeading)
            }.padding(.top,-50)
        }
            .padding(.leading, 40)
    
           
    }
}


struct AnotherItemView: View {
    var body: some View {
        VStack (alignment: .leading, spacing:  5){
            Image("feed_image")
                .resizable()
                .frame(width: 120, height: 120)
                .clipped()
            Text("#일반교양#서적#책")
                .foregroundColor(Color("app_point_color"))
                .font(Font.custom("NanumSquareOTF_acR", size: 12))
            Text("무례한 사람에게 웃으며 대처하는 법")
                .foregroundColor(.black)
                .font(Font.custom("NanumSquareOTF_acR", size: 12))
            .lineLimit(3)
            
            
        }.frame(width: 130, height:  180)
            .frame(alignment: .topLeading)
    }
}
struct FeedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FeedDetailView(dismissParent: {})
    }
}
