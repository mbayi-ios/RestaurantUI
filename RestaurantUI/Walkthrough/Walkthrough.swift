//
//  Walkthrough.swift
//  RestaurantUI
//
//  Created by Ambrose Mbayi on 12/07/2023.
//

import SwiftUI

struct Walkthrough: View {
    var body: some View {
        VStack{
            TabView {
                slider_one()
                slider_two()
            }
            .tabViewStyle(.page)
            
        }
        .frame(width: 350, height: 450)
        .background(Color.red)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.4), radius: 10, x:0, y: 0)
    }
    
    private func slider_one() -> some View {
        VStack{
            Image(systemName: "arrow.triangle.2.circlepath")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(Color.white)
            Text("Reordering made simple")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do")
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            
        }
    }
    private func slider_two() -> some View {
        VStack{
            Image(systemName: "checkmark")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(Color.white)
            Text("Reap the benefits")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do")
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            
        }
    }
}

struct Walkthrough_Previews: PreviewProvider {
    static var previews: some View {
        Walkthrough()
    }
}
