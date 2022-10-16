//
//  ContentView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("首頁", systemImage: "house.circle.fill").padding(EdgeInsets(top: 0.0, leading: 0, bottom: 0, trailing: 0))
                }
            AboutView()
                .tabItem {
                    Label("介紹", systemImage: "book.circle.fill")
                }
            FactionView()
                .tabItem {
                    Label("陣營", systemImage: "globe.europe.africa.fill")
                }
            DLCView()
                .tabItem {
                    Label("DLC", systemImage: "cart.circle.fill")
                }
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .onAppear{
                UITabBar.appearance().backgroundColor = UIColor(Color("tab-color"))
            }
    }
}
