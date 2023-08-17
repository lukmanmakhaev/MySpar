//
//  CardView.swift
//  HHTestApp
//
//  Created by Lukman Makhaev on 17.08.2023.
//

import SwiftUI

struct CardView: View {
    var width: Int
    var height: Int
    var image: String
    var body: some View {
        Button(action: {
            
        }, label: {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: CGFloat(width), height: CGFloat(height))
                .cornerRadius(15)
                
        })
        .shadow(radius: 3)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(width: 100, height: 130, image: "story1")
    }
}
