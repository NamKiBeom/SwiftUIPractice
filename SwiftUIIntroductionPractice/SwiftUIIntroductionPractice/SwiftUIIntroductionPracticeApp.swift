//
//  SwiftUIIntroductionPracticeApp.swift
//  SwiftUIIntroductionPractice
//
//  Created by 남기범 on 2021/09/18.
//

import SwiftUI

@main
struct SwiftUIIntroductionPracticeApp: App {
    @StateObject private var store = SandwichStore(sandwiches: testData)
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
