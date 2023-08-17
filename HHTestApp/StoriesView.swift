//
//  StoriesView.swift
//  HHTestApp
//
//  Created by Lukman Makhaev on 17.08.2023.
//

import SwiftUI

struct StoriesView: View {
    @State var image: String
    @State var name: String
    var body: some View {
        VStack {
            Button(action: {
               print("story tapped")
            }, label: {
                VStack {
                    Image(image)
                        .resizable()
                        .frame(width: 55, height: 55)
                        .clipShape(Circle())
                        .scaledToFill()
                        .padding(5)
                
                }
            })
            .overlay(
                Circle()
                    .stroke(Color.green, lineWidth: 1.5)
                    .frame(width: 60, height: 60)
            )
            Text(name)
                .font(.caption)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .frame(width: 75)
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView(image: "story1", name: "story")
    }
}
