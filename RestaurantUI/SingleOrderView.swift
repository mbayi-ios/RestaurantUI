//
//  SingleOrderView.swift
//  RestaurantUI
//
//  Created by Ambrose Mbayi on 12/07/2023.
//

import SwiftUI

struct SingleOrderView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("food-1")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.trailing, 10)
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    Text("Brooklyn Bowl Clean Juice")
                        .frame(width: 150, height: 50, alignment: .leading)
                        .lineLimit(2)
                        .font(.system(size: 18))
                        .multilineTextAlignment(.leading)
                        .fontWeight(.bold)
                    
                    Text("Ordered on 5/24/2023")
                        .padding(.top, 10)
                        .font(.system(size: 14))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    HStack {
                        Text("$9.99 •")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                        Text("3 Items")
                            .font(.system(size: 14))
                    }
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Image(systemName: "bag.badge.plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .scaledToFill()
                        .padding(12)
                        .background(Color.green)
                        .cornerRadius(50)
                    
                    Spacer()
                    Text("View Details")
                        .underline()
                        .font(.system(size: 14))
                    
                }
                
            }
            
        }
        .frame(width: 350, height: 120)
        .padding(15)
        
        .overlay (
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
            
        )
        
        
        
    }
}

struct SingleOrderView_Previews: PreviewProvider {
    static var previews: some View {
        SingleOrderView()
    }
}
