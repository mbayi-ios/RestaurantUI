//
//  HomeView.swift
//  RestaurantUI
//
//  Created by Ambrose Mbayi on 12/07/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    Text("Hi, Brittany!")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    Image(systemName: "cart.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                }
                .padding()
                
                ScrollView {
                    banner()
                    
                    HStack {
                        Text("Rewards")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                    }
                    VStack {
                    
                        HomeHubContentView()
                        HomeHubContentView()
                    }
                    .padding()
                
                }
                
            }
        }
        
    }
    private func banner() -> some View {
        HStack {
            Text("X2")
                .font(.title2)
                .fontWeight(.bold)
                .frame(width: 60, height: 60)
                .background(Color.red)
                .cornerRadius(50)
            Spacer()
            Text("Earn 2 points for every dollar toward free juice, pastries, merch and more!")
                .frame(width: 220, height: 80)
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "x.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .padding(.bottom, 60)
        }
        .padding()
        .background(Color.green)
        .cornerRadius(20)
        .padding(.horizontal, 10)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
