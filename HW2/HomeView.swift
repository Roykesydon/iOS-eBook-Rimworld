//
//  HomeView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/14.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .center){
            Image("rimworld-background")
                .resizable()
            //                .ignoresSafeArea()
                .scaledToFill()
            VStack{
                Spacer()
                HStack(spacing: 40){
                    Link(destination: URL(string: "https://store.steampowered.com/app/294100/RimWorld/")!)
                    {
                        Image("steam-icon")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    Link(destination: URL(string: "https://twitter.com/TynanSylvester")!)
                    {
                        Image("twitter-icon")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    Link(destination: URL(string: "https://www.youtube.com/c/tynansylvester/videos")!)
                    {
                        Image("youtube-icon")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
