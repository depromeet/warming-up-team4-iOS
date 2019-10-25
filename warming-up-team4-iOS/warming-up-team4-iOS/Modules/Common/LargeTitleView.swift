//
//  LargeTitleView.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/10/22.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI

struct LargeTitleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("빵미미")
                    .foregroundColor(Color("app_point_color"))
                    .font(Font.custom("NanumSquareOTF_acR", size: 32))
                Text("님,")
                    .font(Font.custom("NanumSquareOTF_acR", size: 32))
            }
            Text("오늘 올라온 상품이에요.")
                .font(Font.custom("NanumSquareOTF_acR", size: 32))
            
            Text("서울대학교")
                .foregroundColor(Color("app_point_color"))
                .font(Font.custom("NanumSquareOTF_acR", size: 10))
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topTrailing)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct LargeTitleView_Previews: PreviewProvider {
    static var previews: some View {
        LargeTitleView()
    }
}


//struct HomeTabbedView: View {
//    
//}
