//
//  ContentView.swift
//  HHTestApp
//
//  Created by Lukman Makhaev on 16.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem({
                Image(systemName: "house")
                Text("Главная").padding(.top, 20)
            })
            
            CatalogView().tabItem({
                Image(systemName: "square.grid.2x2")
                Text("Каталог").padding(.top, 20)
            })
            
            CartView().tabItem({
                Image(systemName: "cart")
                Text("Корзина").padding(.top, 20)
            })
            
            ProfileView().tabItem({
                Image(systemName: "person")
                Text("Профиль").padding(.top, 20)
                
            })
        }
        .accentColor(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
