//
//  ContentView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/14.
//

import SwiftUI

struct ContentView: View {
    @State var tabIndex: Int = 0
    
    @State var aboutViewFirstRender = true
    @State var aboutViewAnimationTrigger: [Bool] = [false, false, false ,false]
    @State var aboutViewAnimationDuration = [0.5, 0.15, 0.2, 0.2]
    @State var aboutViewAnimationDurationSum: Double = 0
    var body: some View {
        TabView(selection: $tabIndex) {
            HomeView()
                .tabItem {
                    Label("首頁", systemImage: "house.circle.fill").padding(EdgeInsets(top: 0.0, leading: 0, bottom: 0, trailing: 0))
                }
                .tag(0)
            AboutView(firstRender: $aboutViewFirstRender, animationTrigger: $aboutViewAnimationTrigger, animationDuration: $aboutViewAnimationDuration, animationDurationSum: $aboutViewAnimationDurationSum)
                .tabItem {
                    Label("介紹", systemImage: "book.circle.fill")
                }
                .tag(1)
            FactionView()
                .tabItem {
                    Label("陣營", systemImage: "globe.europe.africa.fill")
                }
                .tag(2)
            DLCView()
                .tabItem {
                    Label("DLC", systemImage: "cart.circle.fill")
                }
                .tag(3)
        }
        .onChange(of: tabIndex) { newValue in
            if(newValue != 1){
                aboutViewAnimationDurationSum = 0
                aboutViewAnimationTrigger = [false, false, false, false]
            }
            
            if(newValue == 1 && !aboutViewFirstRender){
                aboutViewAnimationDurationSum = 0
                aboutViewAnimationTrigger = [false, false, false, false]

                for index in 0...3{
                    withAnimation(
                        .easeInOut(duration: aboutViewAnimationDuration[index])
                        .delay(aboutViewAnimationDurationSum)
                    )
                    {
                        aboutViewAnimationTrigger[index] = true
                    }
                    aboutViewAnimationDurationSum += aboutViewAnimationDuration[index]
                }
            }
        }
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
