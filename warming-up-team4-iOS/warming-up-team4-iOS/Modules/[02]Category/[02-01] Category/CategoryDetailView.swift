//
//  CategoryDetailView.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/10/25.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI

struct CategoryDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
      @State var dismissParent: () -> Void
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CategoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailView(dismissParent: {})
    }
}
