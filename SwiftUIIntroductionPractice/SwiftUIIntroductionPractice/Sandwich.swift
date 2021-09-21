//
//  SandWich.swift
//  SwiftUIIntroductionPractice
//
//  Created by 남기범 on 2021/09/21.
//

import Foundation

struct Sandwich: Identifiable {
    var id = UUID()
    var name: String
    var ingredientCount: Int
    var isSpicy: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
}

let testData = [
    Sandwich(name: "1", ingredientCount: 4, isSpicy: true),
    Sandwich(name: "hunter", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "3", ingredientCount: 3, isSpicy: false),
    Sandwich(name: "hunter", ingredientCount: 2, isSpicy: true),
    Sandwich(name: "5", ingredientCount: 2, isSpicy: true),
    Sandwich(name: "hunter", ingredientCount: 4, isSpicy: true),
    Sandwich(name: "2", ingredientCount: 4, isSpicy: true),
    Sandwich(name: "hunter", ingredientCount: 4, isSpicy: true),
    Sandwich(name: "3", ingredientCount: 4, isSpicy: true),
    Sandwich(name: "hunter", ingredientCount: 4, isSpicy: true),
    Sandwich(name: "4", ingredientCount: 4, isSpicy: true)
]

