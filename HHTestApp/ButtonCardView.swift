//
//  ButtonCardView.swift
//  HHTestApp
//
//  Created by Lukman Makhaev on 17.08.2023.
//

import SwiftUI

struct ButtonCardView: View {
    var width: Int
    var height: Int
    var image: String
    var price: Int
    var body: some View {
        
        VStack {
            Image(image)
                .resizable()
                .scaledToFit()
            
            
            HStack {
                Text("\(price)")
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(.vertical, 8)
                    .padding(.leading, 8)
                Image("symbol")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .scaledToFit()
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "cart.fill")
                    //.frame(width: 30, height: 30)
                        .padding(8)
                        .background((Color.green))
                        .foregroundColor(.white)
                        .clipShape(Circle())
                })
            }
            .padding(4)
            
        }
        .frame(width: CGFloat(width), height: CGFloat(height))
        .background(Color(.white))
        .cornerRadius(15)
        .shadow(radius: 3)
    }
}

struct ButtonCardView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCardView(width: 130, height: 160, image: "prod", price: 99)
    }
}
