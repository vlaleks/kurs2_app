//
//  FavouriteView.swift
//  Furniture_app
//
//  Created by wsr3 on 05.02.2022.
//

import SwiftUI

struct FavouriteView: View {
    @State private var selectedIndex: Int = 0
    private let names = ["Apple MacBook Pro","Apple iPhone 12 Pro","Apple iPad Pro","Apple AirPods Max"]
    private let prices = ["4500","1500","3000","500"]
    var body: some View {
        ZStack{
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
        ScrollView(.vertical
                   , showsIndicators: false) {
            VStack {
                ForEach(0 ..< 4) { index in
                    NavigationLink(destination: DetailScreen(),
                                   label: {ProductShopView(image: Image("prod_\(index + 1)"), size: 170, price: prices[index], name: names[index])
                        
                    })
                        .navigationBarHidden(true)
                        .foregroundColor(.black)
                }
                .padding(.trailing)
            }
            .padding(.leading)
            
            
        }.edgesIgnoringSafeArea(.top)
            HStack{
                Text("$4500")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
        
                
                NavigationLink(
                    destination: FavouriteView().navigationBarHidden(true),
                    label: {
                        
                            Text("Buy")
                                .padding()
                                .padding(.horizontal)
                                .background(Color.white)
                                .foregroundColor(Color("Primary"))
                                .cornerRadius(10.0)
                        
                    }).navigationBarHidden(true)
                
                         
                        
                     }
                     .padding()
            .padding(.horizontal)
            .background(Color("Primary"))
            .frame(maxHeight: .infinity, alignment: .bottom)
    }
}

struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView()
    }
}
    
struct ProductShopView  : View {
    let image: Image
    let size: CGFloat
    let price: String
    let name: String
    var body: some View {
        HStack{
            
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
        VStack{
            
            
            Text(name)
                .font(.title3)
                .fontWeight(.bold)
            
            HStack{
                
                
                Text(price) + Text("$")
                
                    .font(.title3)
                    .fontWeight(.bold)
                Spacer()
                HStack{
                    Button(action: {}){
                        Image(systemName: "minus")
                            .padding(.all, 8)
                    }
                    .frame(width: 30, height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                    .foregroundColor(.black)
                    
                    Text("0")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 8)
                        .foregroundColor(Color("Primary"))
                    
                    Button(action: {}){
                        Image(systemName: "plus")
                            .padding(.all, 8)
                    }
                    .frame(width: 30, height: 30)
                    .background(Color("Primary"))
                    .clipShape(Circle())
                    .foregroundColor(.white)
                }
            }
            
        }
        
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
        }
        .padding(20)
    }
}

}
