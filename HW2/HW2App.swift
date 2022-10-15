//
//  HW2App.swift
//  HW2
//
//  Created by roykesydone on 2022/10/14.
//

import SwiftUI

@main
struct HW2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear{
                    UITabBar.appearance().backgroundColor = UIColor(Color("panel-1"))
                }
        }
    }
}
