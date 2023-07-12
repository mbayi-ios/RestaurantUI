//
//  HomeHubContentView.swift
//  RestaurantUI
//
//  Created by Ambrose Mbayi on 12/07/2023.
//

import SwiftUI

struct HomeHubContentView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Image("home-1")
                .resizable()
                .aspectRatio( contentMode: .fit)
            
            Text("Get exclusive happy hour deals!")
                .font(.system(size: 18))
                .fontWeight(.bold)
                .padding(.horizontal)
            Text("Make plans to swing by the app or in store every day between 4 and 5 PM. Good things come to those w...")
                .foregroundColor(Color.gray)
                .font(.system(size: 14))
                .padding(.vertical, 1)
                .padding(.horizontal)
            Button {
                
            } label: {
                Text("Order Now")
                    .foregroundColor(Color.black)
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Color.green)
                    .cornerRadius(30)
                    .padding(.horizontal)
                    .padding(.top, 10)
                    .padding(.bottom, 15)
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black.opacity(0.1), lineWidth: 1)
        )
    }
    
}

struct HomeHubContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHubContentView()
    }
}
