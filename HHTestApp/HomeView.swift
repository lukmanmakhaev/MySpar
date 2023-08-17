//
//  HomeView.swift
//  HHTestApp
//
//  Created by Lukman Makhaev on 17.08.2023.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchText = ""
    
    var body: some View {
        VStack {
            
            HStack {
                SearchBar(text: $searchText)
            }
            Divider()
            
            ScrollView (showsIndicators: false) {
                VStack (alignment: .leading, spacing: 15){
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (alignment: .top) {
                            StoriesView(image: "story1", name: "Привелегии Мой SPAR")
                            StoriesView(image: "story2", name: "Мы в соцсетях")
                            StoriesView(image: "story3", name: "3 рецепта коктейлей")
                        }
                        .padding(.horizontal, 15)
                    }

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            SlideView(image: "slide3")
                            SlideView(image: "slide2")
                            SlideView(image: "slide1")
                        }
                        .padding(.horizontal, 15)
                    }
                    
                    Button(action: {
                        
                    }, label: {
                        Image("card5")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 130)
                            .cornerRadius(15)
                            .shadow(radius: 3)
                            .padding(.horizontal, 15)
                    })
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            CardView(width: 100, height: 120, image: "card1")
                            CardView(width: 100, height: 120, image: "card2")
                            CardView(width: 100, height: 120, image: "card3")
                            CardView(width: 100, height: 120, image: "card4")
                            CardView(width: 100, height: 120, image: "card1")
                        }
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                    }
                    
                    Text("Рекомендуем")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.leading, 15)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ButtonCardView(width: 130, height: 160, image: "prod", price: 99)
                            ButtonCardView(width: 130, height: 160, image: "prod", price: 109)
                            ButtonCardView(width: 130, height: 160, image: "prod", price: 99)
                            ButtonCardView(width: 130, height: 160, image: "prod", price: 209)
                            ButtonCardView(width: 130, height: 160, image: "prod", price: 99)
                        }
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                    }
                    
                    Text("Сладкое настроение")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.leading, 15)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ButtonCardView(width: 130, height: 160, image: "prod", price: 99)
                            ButtonCardView(width: 130, height: 160, image: "prod", price: 99)
                            ButtonCardView(width: 130, height: 160, image: "prod", price: 99)
                            ButtonCardView(width: 130, height: 160, image: "prod", price: 99)
                            ButtonCardView(width: 130, height: 160, image: "prod", price: 99)
                        }
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
