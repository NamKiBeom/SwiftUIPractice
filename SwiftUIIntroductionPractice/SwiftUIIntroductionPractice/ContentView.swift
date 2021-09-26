//
//  ContentView.swift
//  SwiftUIIntroductionPractice
//
//  Created by 남기범 on 2021/09/18.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: SandwichStore
     
    var body: some View {
        NavigationView {
            List {
                ForEach(store.sandwiches) { sandwich in
                    SandwichCell(sandwich: sandwich)
                }
                .onMove(perform: store.moveSandwiches(from:to:))
                .onDelete(perform: store.deleteSandwiches(offsets:))
                
                HStack {
                    Spacer()
                    Text("\(store.sandwiches.count) Sandwitches")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Sandwitches")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    #if os(iOS)
                    EditButton()
                    #endif
                    
                    Button("Add", action: store.makeSandwich)
                }
            }
            
            Text("Select a sandwitch")
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testStore)
            .preferredColorScheme(.light)
    }
}

struct SandwichCell: View {
    var sandwich: Sandwich
    
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            Image(sandwich.name)
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(8.0)
                .aspectRatio(contentMode: .fill)
            
            VStack(alignment: .leading) {
                Text("sandwitchName = \(sandwich.name)")
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
