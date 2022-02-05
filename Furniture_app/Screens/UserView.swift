//
//  UserView.swift
//  Furniture_app
//
//  Created by wsr3 on 05.02.2022.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        ZStack{
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image("User").resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20.0)
                    Spacer()
                    VStack{
                        Text("8952320345")
                        Text("Vladimir")
                        Text("Status: Platina")
                    }
                    
                }.padding(40)
                
                
                HStack{
                    Text("Sells")
                }.padding(3)
                
                HStack{
                    Text("Orders")
                }.padding(3)
                
                HStack{
                    Text("Reviews")
                }.padding(3)
                HStack{
                    Text("Helps&Support")
                }.padding(3)
                
                HStack{
                    Text("Qiut")
                }.padding(10)
                .background(Color.red)
                .foregroundColor(Color.white)
                .cornerRadius(10.0)
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
