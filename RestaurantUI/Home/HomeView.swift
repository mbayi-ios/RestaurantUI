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
                    
                        Text("Past Order")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 12)
                    
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<5){_ in
                                    SingleOrderView()
                                }
                            }
                            .padding(.bottom, 20)
                            
                        }
                        HomeHubContentView()
                        HomeHubContentView()
                    }
                    .padding(.horizontal, 10)
                
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
                .background(Color.green)
                .cornerRadius(50)
            Spacer()
            Text("Earn 2 points for every dollar toward free juice, pastries, merch and more!")
                .font(.system(size: 16))
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
        .frame(width:380, height: 100)
        .background(Color.green.opacity(0.4))
        .cornerRadius(15)
        .padding(.horizontal, 10)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
