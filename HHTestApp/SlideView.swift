//
//  SlideView.swift
//  HHTestApp
//
//  Created by Lukman Makhaev on 17.08.2023.
//

import SwiftUI

struct SlideView: View {
    @State var image: String
    var body: some View {
        HStack (alignment: .top) {
            Button(action: {
                
            }, label: {
                VStack {
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 320, height: 160)
                        .cornerRadius(15)
                }
            })
        }
    }
}

struct SlideView_Previews: PreviewProvider {
    static var previews: some View {
        SlideView(image: "slide1")
    }
}
