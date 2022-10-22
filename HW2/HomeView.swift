//
//  HomeView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/14.
//

import SwiftUI

struct PieSegment: Shape {
    var start: Angle
    var end: Angle
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        path.move(to: center)
        path.addArc(center: center, radius: rect.midX, startAngle: start, endAngle: end, clockwise: false)
        return path
    }
}

struct HomeView: View {
    @State var titleBarWidth: Double = 0
    @State var titleHeight: Double = 0
    
    @State var loadingProgress: Double = 0
    @State var isLoading: Bool = true
    
    @State var animationTrigger: [Bool] = Array(repeating: false, count: 8)
    
    @State private var timer: Timer?
    
    var body: some View {
        GeometryReader { metrics in
            ZStack(alignment: .center){
                Image("rimworld-bg-no-word-hyper")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .frame(width:metrics.size.width * 1.0)
                
                VStack{
                    Spacer()
                    
                    ZStack{
                        ZStack{
                            Circle()
                                .stroke(Color(red: 1, green: 1, blue: 1, opacity: 1.0))
                                .offset(x: 5, y: 5)
                                .frame(width: min(metrics.size.height, metrics.size.width) * 0.3)
                                .mask(
                                    PieSegment(start: .degrees(0), end: .degrees(loadingProgress*360))
                                        .fill(.red)
                                        .mask(
                                            ZStack{
                                                PieSegment(start: .degrees(0), end: .degrees(41))
                                                    .fill(.red)
                                                
                                                PieSegment(start: .degrees(49), end: .degrees(131))
                                                    .fill(.red)
                                                
                                                PieSegment(start: .degrees(139), end: .degrees(221))
                                                    .fill(.red)
                                                
                                                PieSegment(start: .degrees(229), end: .degrees(311))
                                                    .fill(.red)
                                                
                                                PieSegment(start: .degrees(319), end: .degrees(360))
                                                    .fill(.red)
                                            }
                                                .compositingGroup()
                                        )
                                )
                                .opacity(animationTrigger[0] ? 0 : 1)
                            
                            Text(String(format: "%.1f", loadingProgress*100))
                                .font(.system(size: 20, weight: .thin))
                                .foregroundColor(.white)
                                .opacity(animationTrigger[0] ? 0 : 1)
                            
                            Circle()
                                .stroke(.white, lineWidth: 20)
                                .frame(width: min(metrics.size.height, metrics.size.width) * 0.2)
                                .mask(
                                    PieSegment(start: .degrees(0), end: .degrees(loadingProgress*360))
                                        .fill(.red)
                                        .mask(
                                            ZStack{
                                                PieSegment(start: .degrees(0), end: .degrees(41))
                                                    .fill(.red)
                                                
                                                PieSegment(start: .degrees(49), end: .degrees(131))
                                                    .fill(.red)
                                                
                                                PieSegment(start: .degrees(139), end: .degrees(221))
                                                    .fill(.red)
                                                
                                                PieSegment(start: .degrees(229), end: .degrees(311))
                                                    .fill(.red)
                                                
                                                PieSegment(start: .degrees(319), end: .degrees(360))
                                                    .fill(.red)
                                            }
                                                .compositingGroup()
                                        )
                                )
                                .opacity(animationTrigger[0] ? 0 : 1)
                        }
                        
                        Rectangle()
                            .fill(Color(red: 1, green: 1, blue: 1, opacity: 1.0))
                            .frame(width: titleBarWidth, height: 3)
                            .opacity(animationTrigger[1] ? 1 : 0)
                        
                        GlitchTextView(text: "RIMWORLD")
                            .mask(
                                Rectangle()
                                    .fill(Color(red: 1, green: 1, blue: 1, opacity: 1.0))
                                    .frame(width: metrics.size.width*0.85, height: titleHeight)
                            )
                    }
                    
                    
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
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
                }
                .frame(maxWidth: .infinity)
                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0, green: 0, blue: 0, opacity: 0), Color(red: 0, green: 0, blue: 1, opacity: 0.2)]), startPoint: .top, endPoint: .bottom))
            }
        }
        .onAppear(){
            self.timer = Timer.scheduledTimer(withTimeInterval: 0.02, repeats: true, block: { _ in
                updateLoading()
            })
            
            
            func updateLoading(){
                if(!isLoading){
                    return
                }
                
                if(abs(loadingProgress - 1.0) > 0.001){
                    withAnimation(
                        .easeInOut(duration: 0.05)
                    )
                    {
                        loadingProgress += Double.random(in: 1...2) / 100.0
                        loadingProgress = min(loadingProgress, 1)
                    }
                }
                else{
                    isLoading = false
                    self.timer?.invalidate()
                    
                    withAnimation(
                        .easeInOut(duration: 0.05)
                        .delay(0.2)
                    )
                    {
                        animationTrigger[0] = true
                    }
                    withAnimation(
                        .easeInOut(duration: 0.05)
                        .delay(0.25)
                    )
                    {
                        animationTrigger[0] = false
                    }
                    withAnimation(
                        .easeInOut(duration: 0.05)
                        .delay(0.3)
                    )
                    {
                        animationTrigger[0] = true
                    }
                    withAnimation(
                        .easeInOut(duration: 0.05)
                        .delay(0.35)
                    )
                    {
                        animationTrigger[0] = false
                    }
                    withAnimation(
                        .easeInOut(duration: 0.1)
                        .delay(0.4)
                    )
                    {
                        animationTrigger[1] = true
                        titleBarWidth = 300
                    }
                    withAnimation(
                        .easeInOut(duration: 0.01)
                        .delay(0.5)
                    )
                    {
                        animationTrigger[1] = false
                        animationTrigger[0] = true
                    }
                    withAnimation(
                        .easeInOut(duration: 2)
                        .delay(0.5)
                    )
                    {
                        titleHeight = 1000
                    }
                }
            }
            
            
        }
        .onDisappear {
            self.timer?.invalidate()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
