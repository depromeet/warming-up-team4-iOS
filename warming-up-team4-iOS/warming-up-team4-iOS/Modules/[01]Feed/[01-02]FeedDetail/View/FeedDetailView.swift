//
//  FeedDetailView.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/10/21.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI

struct FeedDetailView: View {
    var detailModel: Feed
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    

    @State var dismissParent: () -> Void
    var body: some View {
    
        VStack(alignment: .center,spacing: 0) {
            
            topBar
                .frame(height: 40)
            contentView
            divider
           // bottomBar
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
                 Image("back_btn")
                               .renderingMode(.original)
                // self.link.presented?.value = false
            }
            Spacer()
            Button(action: {}) {
                 Image("share_btn")
                               .renderingMode(.original)
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
            Image(detailModel.image)
                .resizable()
                .frame(height: 400)
                .clipped()
            VStack(alignment: .leading, spacing: 8) {
                Spacer()
                    .frame(height: 20)
                Text(detailModel.tag)
                    .foregroundColor(Color("app_point_color"))
                    .font(Font.custom("NanumSquareOTF_acR", size: 13))
                Text(detailModel.title)
                    .lineLimit(Int.max)
                    .fixedSize(horizontal: false, vertical: true)
                    .layoutPriority(1000)
                    .font(Font.custom("NanumSquareOTF_acEB", size: 28))
                Text("2019.10.16")
                    .foregroundColor(Color("app_detail_date_color"))
                    .font(Font.custom("NanumSquareOTF_acR", size: 13))
                Text(detailModel.content)
                    .foregroundColor(Color("app_detail_content_color"))
                .font(Font.custom("NanumSquareOTF_acR", size: 16))
                    .lineLimit(Int.max)
                    .fixedSize(horizontal: false, vertical: true)
                .lineSpacing(5)
                    .layoutPriority(1000)
                    
                HStack {
                    Text("by")
                    .font(Font.custom("NanumSquareOTF_acR", size: 13))
                    
                    Image("feed_image")
                        .resizable()
                        .frame(width: 34, height: 34)
                        .clipped()
                        .cornerRadius(34)
                        .foregroundColor(.purple)
                    Text("대학생")
                    .foregroundColor(Color("app_detail_content_color"))
                    .font(Font.custom("NanumSquareOTF_acEB", size: 13))
                    Text("성사율80%")
                    .foregroundColor(Color("app_point_color"))
                    .font(Font.custom("NanumSquareOTF_acR", size: 12))
                }.padding(.top,10)
                .padding(.bottom,10)
                HStack (spacing: 0){
                    Text("대학생")
                    .font(Font.custom("NanumSquareOTF_acB", size: 18))
                    Text("님의 다른 물건")
                                   .font(Font.custom("NanumSquareOTF_acR", size: 18))
                        
                }.padding(.top,10)
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
            }.padding(.top,0)
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
                .font(Font.custom("NanumSquareOTF_acR", size: 13))
            Text("무례한 사람에게 웃으며 대처하는 법")
                .foregroundColor(Color("app_detail_content_color"))
                .font(Font.custom("NanumSquareOTF_acR", size: 15))
                
            .lineLimit(3)
            
            
        }.frame(width: 130, height:  180)
            .frame(alignment: .topLeading)
    }
}
struct FeedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FeedDetailView(detailModel: Feed(image: "feed_image7", title: "3초 기절 숙면 베개 ", wantedNumber: 11, content: "베고 자기도 좋고 안고 자기도 좋은 베개입니다.\n3개 샀는데 너무 많아서 1개 교환 원해요!\n베고 잤는데 편하고 너무 좋아요~", tag: "#마약#편안#일어나보니지각"), dismissParent: {})
    }
}
