//
//  Walkthrough.swift
//  RestaurantUI
//
//  Created by Ambrose Mbayi on 12/07/2023.
//

import SwiftUI

struct Walkthrough: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                
                Color.green.ignoresSafeArea()
                VStack {
                    VStack{
                        TabView {
                            slider_one()
                            slider_two()
                        }
                        .tabViewStyle(.page)
                        .onAppear {
                            setupAppearance()
                        }
                        
                    }
                    .frame(width: 370, height: 450)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.2), radius: 10, x:0, y: 0)
                    
                    NavigationLink(destination: LoginView()) {
                        login_button()
                    }
                    
                    NavigationLink(destination: LoginView()) {
                        signup_button()
                    }
                    NavigationLink(destination: HomeView()) {
                        skip_button()
                    }
                }
            }
        }
    }
    
    private func slider_one() -> some View {
        VStack{
            Image(systemName: "arrow.triangle.2.circlepath")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .foregroundColor(Color.green)
            Text("Reordering made simple")
                .font(.title2)
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
                .frame(width: 60, height: 60)
                .foregroundColor(Color.green)
            Text("Reap the benefits")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do")
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            
        }
    }
    
    private func signup_button() -> some View {
        VStack {
            Text("Sign Up")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(25)
        .padding(.horizontal,10)
        .padding(.top, 5)
    }
    
    private func login_button() -> some View {
        VStack {
            Text("Login")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.black)
        .cornerRadius(25)
        .padding(.horizontal,10)
        .padding(.top, 30)
    }
    
    private func skip_button() -> some View {
        VStack {
            Text("Skip")
                .font(.body)
                .foregroundColor(Color.black)
                .fontWeight(.bold)
                .underline()
            
        }
        .padding()
        .cornerRadius(25)
    }
    
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.3)
    }
}

struct Walkthrough_Previews: PreviewProvider {
    static var previews: some View {
        Walkthrough()
    }
}
