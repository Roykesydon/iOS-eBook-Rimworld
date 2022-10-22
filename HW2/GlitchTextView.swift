//
//  GlitchTextView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/15.
//

import SwiftUI

struct ShadowText: View{
    let text: String
    var fontSize: Double = 60
    var black: Bool = false
      
    var body: some View {
        let blueColor = black ? Color.black : Color(red: 110/255, green: 248/255, blue: 255/255)
        let pinkColor = black ? Color.black : Color(red: 255/255, green: 105/255, blue: 192/255)
        let whiteColor = black ? Color.black : Color.white
        
        ZStack{
            // blue
            Text(text)
                .foregroundColor(blueColor)
                .font(.system(size: self.fontSize, weight: .heavy))
                .offset(x:-2)
            
            //pink
            Text(text)
                .foregroundColor(pinkColor)
                .font(.system(size: self.fontSize, weight: .heavy))
                .offset(x:2)
            
            Text(text)
                .foregroundColor(whiteColor)
                .font(.system(size: self.fontSize, weight: .heavy))
        }
    }
}

struct GlitchTextView: View {
    @State private var moveXDiff1: Double = 0
    @State private var moveXDiff2: Double = 0
    
    @State private var timer: Timer?
    
    let text: String
    var fontSize: Double = 60
    
    var body: some View {
        ZStack{
            ShadowText(text: text, fontSize: fontSize)
            
            // upper glitch
            ShadowText(text: text, fontSize: fontSize, black: true)
                .foregroundColor(.black)
                .fixedSize()
                .frame(height:5)
                .offset(y:10)
                .clipped()
                .offset(x: 0, y: -10)
                .animation(.easeOut(duration: 0.1)
                    .repeatCount(1, autoreverses: true), value: moveXDiff1)
            ShadowText(text: text, fontSize: fontSize)
                .foregroundColor(.white)
                .fixedSize()
                .frame(height:5)
                .offset(y:10)
                .clipped()
                .offset(x: moveXDiff1, y: -10)
                .animation(.easeOut(duration: 0.1)
                    .repeatCount(1, autoreverses: true), value: moveXDiff1)
            
            //lower glitch
            ShadowText(text: text, fontSize: fontSize, black: true)
                .foregroundColor(.black)
                .fixedSize()
                .frame(height:5)
                .offset(y:-15)
                .clipped()
                .offset(x: 0, y: 15)
                .animation(.easeOut(duration: 0.1)
                    .repeatCount(1, autoreverses: true), value: moveXDiff2)
            ShadowText(text: text, fontSize: fontSize)
                .foregroundColor(.white)
//                .font(.system(size: fontSize, weight: .heavy))
                .fixedSize()
                .frame(height:5)
                .offset(y:-15)
                .clipped()
                .offset(x: moveXDiff2, y: 15)
                .animation(.easeOut(duration: 0.1)
                    .repeatCount(1, autoreverses: true)
                           , value: moveXDiff2)
            
        }
        .onAppear{
            self.timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { _ in
                updateText()
            })
            
            
            func updateText(){
                if (moveXDiff1 - 0 > 1e-5){
                    moveXDiff1 = 0
                    moveXDiff2 = 0
                }
                else{
                    moveXDiff1 = Double.random(in: -3...3)
                    moveXDiff2 = Double.random(in: -3...3)
                }
            }
            
            //            moveXDiff = 5
        }
        .onDisappear {
            self.timer?.invalidate()
        }
    }
}

struct GlitchTextView_Previews: PreviewProvider {
    static var previews: some View {
        GlitchTextView(text: "Test")
    }
}
