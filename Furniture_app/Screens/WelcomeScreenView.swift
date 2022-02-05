//
//  WelcomeScreenView.swift
//  Furniture_app
//
//  Created by wsr3 on 05.02.2022.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
                   ZStack {
                       Color("Bg").edgesIgnoringSafeArea(.all)
                       VStack {
                           Spacer()
                        Image("welcome_logo")
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                           Spacer()
                           PrimaryButton(title: "Get Started")
                           
                           NavigationLink(
                               destination: SignInScreenView().navigationBarHidden(true),
                               label: {
                                   Text("Sign In")
                                       .font(.title3)
                                       .fontWeight(.bold)
                                       .foregroundColor(Color("Primary"))
                                       .padding()
                                       .frame(maxWidth: .infinity)
                                       .background(Color.white)
                                       .cornerRadius(50.0)
                                       .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                       .padding(.vertical)
                               })
                               .navigationBarHidden(true)
                           
                           HStack {
                               Text("New around here? ")
                               Text("Sign in")
                                   .foregroundColor(Color("Primary"))
                           }
                       }
                       .padding()
                   }
               }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
		
