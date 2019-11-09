//
//  FeedDetail.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/11/09.
//  Copyright © 2019 user. All rights reserved.
//

import Foundation


struct FeedDetail: Identifiable {
    var id = UUID()
    var writer: User
    var feed: Feed
    

}



struct User: Identifiable, Hashable {
    var id = UUID()
    var nickName: String
    var successRatio: Int
    var relativeProduct: [Feed]
    
}
