//
//  SignInScreenView.swift
//  Furniture_app
//
//  Created by wsr3 on 05.02.2022.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email: String = ""
        var body: some View {
            ZStack {
                Color("Bg").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    
                    VStack {
                        Text("Sign In")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "sign_a")), text: Text("Sign in with Apple"))
                        
                        SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "sign_g")), text: Text("Sign in with Google").foregroundColor(Color("Primary")))
                            .padding(.vertical)
                        
                        Text("or get a link emailed to you")
                            .foregroundColor(Color.black.opacity(0.4))
                        
                        TextField("Work email address", text: $email)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                            .padding(.vertical)
                        NavigationLink(
                            destination: HomeScreen().navigationBarHidden(true),
                            label: {
                                PrimaryButton(title: "Email me a signup link")
                            }).navigationBarHidden(true)
                        
                        
                    }
                    
                    Spacer()
                    Divider()
                    Spacer()
                    Text("You are completely safe.")
                    Text("Read our Terms & Conditions.")
                        .foregroundColor(Color("PrimaryColor"))
                    Spacer()
                    
                }
                .padding()
            }
        }
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}
	
struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
    }
}
