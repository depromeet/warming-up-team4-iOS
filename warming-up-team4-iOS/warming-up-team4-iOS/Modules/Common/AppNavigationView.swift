//
//  AppNavigationView.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/10/22.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI

struct AppNavigationView: View {
    var body: some View {
        HStack (alignment: .bottom) {
            Spacer()
            Button(action: {}) {
                Image("search_btn")
                .renderingMode(.original)
            }
            Button(action: {}) {
                Image("bell_btn")
                .renderingMode(.original)
            }.frame(alignment: .trailing)
            
        }.padding(.top,0)
            
        .frame(height: 50)
    }
}

struct AppNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavigationView()
    }
}
