//
//  SandwitchDetail.swift
//  SwiftUIIntroductionPractice
//
//  Created by 남기범 on 2021/09/21.
//

import SwiftUI

struct SandwichDetail: View {
    var sandwich: Sandwich
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            
            Image(sandwich.name)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            
            Spacer(minLength: 0)
            
            if sandwich.isSpicy && !zoomed {
                HStack {
                    Spacer()
                    
                    Label("Spicy", systemImage: "flame.fill")
                    
                    Spacer()
                }
                .padding(.all)
                .font(Font.headline.smallCaps())
                .background(Color.red)
                .foregroundColor(.yellow)
                .transition(.move(edge: .bottom))
            }
        }
        .navigationTitle(sandwich.name)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

struct SandwitchDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                SandwichDetail(sandwich: testData[1])
            }
            NavigationView {
                SandwichDetail(sandwich: testData[3])
            }
        }
    }
}
