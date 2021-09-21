//
//  SandwichStore.swift
//  SwiftUIIntroductionPractice
//
//  Created by 남기범 on 2021/09/21.
//

import Foundation
import SwiftUI

class SandwichStore: ObservableObject {
    @Published var sandwiches: [Sandwich]
    
    init(sandwiches: [Sandwich] = []) {
        self.sandwiches = sandwiches
    }
    
    func makeSandwich() {
        withAnimation {
            sandwiches.append(Sandwich(name: "hunter", ingredientCount: 3))
        }
    }
    
    func moveSandwiches(from: IndexSet, to: Int) {
        withAnimation {
            sandwiches.move(fromOffsets: from, toOffset: to)
        }
    }
    
    func deleteSandwiches(offsets: IndexSet) {
        withAnimation {
            sandwiches.remove(atOffsets: offsets)
        }
    }
}

let testStore = SandwichStore(sandwiches: testData)
