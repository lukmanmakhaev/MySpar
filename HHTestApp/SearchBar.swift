//
//  SearchBar.swift
//  HHTestApp
//
//  Created by Lukman Makhaev on 17.08.2023.
//

import SwiftUI

struct SearchBar: View {
    //@StateObject var viewModel = HomePageViewModel()
    @Binding var text: String
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image("location")
                        .resizable()
                        .frame(width: 19, height: 19)
    //.padding(.trailing, 8)
                    TextField("Москва, Москва и Московская область", text: $text)
                        .multilineTextAlignment(.center)
                    
                }
                .padding(.all, 6)
                .background(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(.systemGray3), lineWidth: 0.5)
                        .background(RoundedRectangle(cornerRadius: 20).fill(.white))
                )
                .padding(.leading)
                
                Button(action: {
                    
                }, label: {
                    Image("menu")
                        .resizable()
                        .frame(width: 19, height: 19)
                        .padding(.trailing)
                })
            }
        }
        .padding(.top, 11)
    }
}

//struct SearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar()
//    }
//}
