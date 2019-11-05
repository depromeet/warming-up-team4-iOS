//
//  Category.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/11/05.
//  Copyright © 2019 user. All rights reserved.
//

import Foundation

enum CategoryType {
    case food, female, male, life, beauty, electric, book, furniture, pet

    static var allItems: [CategoryType] {
        return [food, female, male, life, beauty, electric, book, furniture, pet]
    }

    var title: String {
        switch self {
        case .food:
            return "식품"
        case .female:
            return "여성의류"
        case .male:
            return "남성의류"
        case .life:
            return "생필품"
        case .beauty:
            return "뷰티"
        case .electric:
            return "전자제품"
        case .book:
            return "도서"
        case .furniture:
            return "가구"
        case .pet:
            return "애완동물"

        }
    }

    var assetName: String {
        switch self {
        case .food:
            return "iconCategoryFood"
        case .female:
            return "iconCategoryFemale"
        case .male:
            return "iconCategoryMale"
        case .life:
            return "iconCategoryLife"
        case .beauty:
            return "iconCategoryBeauty"
        case .electric:
            return "iconCategoryElectric"
        case .book:
            return "iconCategoryBook"
        case .furniture:
            return "iconCategoryFurniture"
        case .pet:
            return "iconCategoryPet"
        }
    }
}
