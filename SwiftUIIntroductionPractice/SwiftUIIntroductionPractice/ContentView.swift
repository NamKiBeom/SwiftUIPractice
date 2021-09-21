//
//  ContentView.swift
//  SwiftUIIntroductionPractice
//
//  Created by 남기범 on 2021/09/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            
            Text("Hello, world!")
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
