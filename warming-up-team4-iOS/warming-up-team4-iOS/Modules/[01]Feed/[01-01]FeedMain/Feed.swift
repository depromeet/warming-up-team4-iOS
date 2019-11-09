//
//  Feed.swift
//  warming-up-team4-iOS
//
//  Created by 진호놀이터 on 2019/11/08.
//  Copyright © 2019 user. All rights reserved.
//

import Foundation




struct Feed: Identifiable, Hashable {
    
    var id = UUID()
    var image: String
    var title: String
    var wantedNumber: Int
    var content: String
    var tag: String
   // var writer: User
  static let modelData: [Feed] = [
            Feed(image: "feed_image", title: "베드트레이 교환 원해요", wantedNumber: 23, content: "침대에서 정말 사용하기 편해요, 색상도 이쁘고 원목이라 참 좋아요!", tag: "#가구#원목#인테리어"
            ),
            Feed(image: "feed_image1", title: "무례한 사람에게 웃으며 대처하는 법", wantedNumber: 9, content: "정말 재미있는 책입니다. 저는 다섯번이나 읽었네요..", tag: "#책#교양#처세술#말"),
            Feed(image: "feed_image2", title: "계란말이, 소세지등 반찬 \n 반찬 나눔해요!!", wantedNumber: 14, content: "부모님이 반찬을 보내주셨는데 너무 많아서 나눔합니다. 얼른 문의 주세요. 진짜 맛있어요 특히 볶음김치가 진짜 진짜 맛있어요. 볶음밥 해드셔요!", tag: "밑반찬#집밥#소세지"),
            Feed(image: "feed_image3", title: "생수 20개 교환합니당", wantedNumber: 6, content: " 삼다수에요. 제가 쿠팡에서 물을 너무 많이 시켰네요. 햇반이 랑 교환 원합니다!!", tag: "#생필품#필수아이템"),
            Feed(image: "feed_image4", title: "헬스기구으로 교환해요", wantedNumber: 12, content: "역기랑 3kg아령 2개 있습니다. 상태 완전 좋아요. 닭가슴살이나 단백질 종류 음식으로 교환하실 분 주세요.", tag: "#건강#헬스#보조"),
            Feed(image: "feed_image5", title: "스트라이프 커프스 셔츠", wantedNumber: 7, content: "스트라이프 커프스 셔츠입니다.\n공용이고 실착 2회입니다!\n상태 좋아요~~", tag: "#셔츠#OOTD#깔끔#모던"),
            Feed(image: "feed_image6", title: "공부하기 좋은 책상 스탠드", wantedNumber: 30, content: "공부할 때, 잘 var tag: String때 켜놓기 좋은 스탠드입니다.\n방의 분위기를 살려줘요!", tag: "#독서#분위기#무드"),
            Feed(image: "feed_image7", title: "3초 기절 숙면 베개 ", wantedNumber: 11, content: "베고 자기도 좋고 안고 자기도 좋은 베개입니다.\n3개 샀는데 너무 많아서 1개 교환 원해요!\n베고 잤는데 편하고 너무 좋아요~", tag: "#마약#편안#일어나보니지각"),
            Feed(image: "feed_image8", title: "레이스가 예쁜 화이트 커튼 ", wantedNumber: 11, content: "화이트라 깔끔한 분위기를 연출할 수 있고, 레이스가 있어서 너무 귀여워요!\n3개월 썼는데 암막커튼으로 바꾸고 싶어서 내놓아요^^", tag: "#갬성#급하면드레스로")
    
    ]
    
//  static func getDummy() -> [Feed] {
//
//        return modelData
//    }
}
