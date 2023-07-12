//
//  SingleOrderView.swift
//  RestaurantUI
//
//  Created by Ambrose Mbayi on 12/07/2023.
//

import SwiftUI

struct SingleOrderView: View {
    var body: some View {
            
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Image("food-1")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .padding(.trailing, 10)
                        .cornerRadius(15)
                    VStack(alignment: .leading) {
                        Text("Brooklyn Bowl Clean Juice")
                            
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .lineLimit(2)
                            .font(.system(size: 18))
                            .multilineTextAlignment(.leading)
                            .fontWeight(.bold)
                            
                        Text("Ordered on 5/24/2023")
                            .padding(.top, 10)
                        Spacer()
                        HStack {
                            Text("$9.99 •")
                                .fontWeight(.bold)
                            Text("3 Items")
                        }
                    }
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
                        
                    }
                    
                }
                
            }
            .frame(width: 400, height: 120)
            .padding(15)
            
            .overlay (
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                   
            )
            
            
            
    }
}

struct SingleOrderView_Previews: PreviewProvider {
    static var previews: some View {
        SingleOrderView()
    }
}
