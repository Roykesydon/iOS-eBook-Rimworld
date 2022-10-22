//
//  AboutView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/15.
//

import SwiftUI
import AVKit

struct TitleDividerView: View {
    let title: String
    var fontSize: Double = 30
    
    var body: some View {
        ShadowText(text: title, fontSize: fontSize)
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
        
        Divider()
            .frame(height: 3)
            .overlay(.white)
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
    }
}

struct DetailTextView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .font(.system(size: 17, weight: .bold))
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
    }
}

struct AboutView: View {
    @State var trailerPlayer = AVPlayer(url: Bundle.main.url(forResource: "rimworld-trailer", withExtension: "mp4")!)
    
    @Namespace private var backgroundExpandSpace
    
    
    @Binding var firstRender: Bool
    @Binding var animationTrigger: [Bool]
    @Binding var animationDuration: [Double]
    @Binding var animationDurationSum: Double
    
    var body: some View {
        GeometryReader { metrics in
            ZStack(alignment: .center){
                Image("rimworld-bg-no-word-hyper")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .frame(width:metrics.size.width * 1.0)
                
                VStack{
                    GlitchTextView(text:"RIMWORLD")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 70, trailing: 0))
                        .offset(y: 50)
                        .opacity(animationTrigger[0] ? 1 : 0)
                    
                    ZStack{
                        HStack(alignment: .bottom){
                            if animationTrigger[0] && !animationTrigger[1]{
                                Spacer()
                                RoundedRectangle(cornerRadius: 50.0)
                                    .fill(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.5))
                                    .matchedGeometryEffect(id: "background", in: backgroundExpandSpace)
                                    .frame(width: 0, height: 0)
                                Spacer()
                            }
                            else if (animationTrigger[1] && !animationTrigger[2]){
                                Spacer()
                                RoundedRectangle(cornerRadius: 50.0)
                                    .fill(Color(red: 1, green: 1, blue: 1, opacity: 0.5))
                                    .matchedGeometryEffect(id: "background", in: backgroundExpandSpace)
                                    .frame(width: metrics.size.width*0.85, height: 10)
                                Spacer()
                            }
                            else if (animationTrigger[2]){
                                Spacer()
                                RoundedRectangle(cornerRadius: 25, style: .circular)
                                    .fill(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
                                    .matchedGeometryEffect(id: "background", in: backgroundExpandSpace)
                                    .frame(width: metrics.size.width*0.85, height: metrics.size.height*0.75)
                                Spacer()
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                        ScrollView(showsIndicators: false){
                            // 宣傳片
                            VStack{
                                TitleDividerView(title: "宣傳片")
                                
                                VideoPlayer(player: trailerPlayer)
                                    .scaledToFit()
                                    .frame(height:metrics.size.height*0.4)
                                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                            }
                            
                            // 簡介
                            TitleDividerView(title: "簡介")
                            
                            TabView {
                                Image("rimworld-1")
                                    .resizable()
                                    .scaledToFit()
                                Image("rimworld-2")
                                    .resizable()
                                    .scaledToFit()
                                Image("rimworld-3")
                                    .resizable()
                                    .scaledToFit()
                                Image("rimworld-4")
                                    .resizable()
                                    .scaledToFit()
                            }
                            .frame(height:metrics.size.height*0.3)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                            .tabViewStyle(.page)
                            
                            DetailTextView(text: "《邊緣世界》是一款故事生成遊戲。它旨在與人合寫出悲劇、轉折和最終獲得勝利的故事，可能是被囚禁的海賊、或絕望的殖民者；陷入飢荒、或尋得一線生機。藉由操縱世界向您發出的「隨機」事件來編寫故事。每場雷雨、海賊襲擊和旅行商團都是由人工智能故事敍述者安排給您的考驗。")
                            
                            // 不完美的殖民者
                            TitleDividerView(title: "不完美的殖民者")
                            
                            DetailTextView(text: "您的殖民者並不是專業的拓荒者 ── 他們是墜毀的星際客船上的倖存者。您最後可能會與一位貴族，一位會計師和一位家庭主婦開始您的故事。通過在戰鬥中俘虜敵人並說服他們加入您的勢力；或從奴隸販子購買人力；或收留前來投靠的難民，都是可以獲得更多的殖民者的方法。因此，您的殖民地裡總會是魚龍混雜的。")
                            
                            // 環境
                            TitleDividerView(title: "環境")
                            
                            DetailTextView(text: "遊戲能生成完整的星球，從極點到赤道。您可以選擇將逃生艙降落在寒冷的北方苔原，乾旱的沙漠平原、溫帶森林或炎熱的熱帶雨林中。不同地區有著不同的動物、植物、疾病、溫度、降雨、礦產資源和地形。在疾病叢生，悶熱的叢林中生存所遭遇的挑戰，和在乾旱的沙漠荒地，或著作物生長期只有兩個月的冰冷苔原是截然不同的。")
                            
                            // 馴養
                            TitleDividerView(title: "馴養")
                            
                            DetailTextView(text: "您可以馴服和訓練動物。可愛的寵物能為傷心的殖民者帶來歡樂。家畜可以勞動、擠奶和剪毛。有攻擊性的猛獸可以放出去攻擊敵人。動物種類有很多── 貓、拉布拉多犬、灰熊、駱駝、美洲獅、栗鼠、雞以及外星生物。")
                        }
                        .opacity(animationTrigger[3] ? 1 : 0)
                        .frame(width: metrics.size.width * 0.85, height: metrics.size.height*0.7)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0, green: 0, blue: 0, opacity: 0), Color(red: 0, green: 0, blue: 1, opacity: 0.2)]), startPoint: .top, endPoint: .bottom))
            }
        }
        .onAppear{
            for index in 0...3{
                withAnimation(
                    .easeInOut(duration: animationDuration[index])
                    .delay(animationDurationSum)
                )
                {
                    animationTrigger[index] = true
                }
                animationDurationSum += animationDuration[index]
            }
            
            firstRender = false
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    struct AboutViewDemo: View {
        @State var animationTrigger: [Bool] = [false, false, false ,false]
        @State var aboutViewAnimationDuration = [0.5, 0.15, 0.2, 0.2]
        @State var aboutViewAnimationDurationSum: Double = 0
        @State var aboutViewFirstRender = false
        
        var body: some View {
            AboutView(firstRender: $aboutViewFirstRender, animationTrigger: $animationTrigger, animationDuration: $aboutViewAnimationDuration, animationDurationSum: $aboutViewAnimationDurationSum)
        }
    }
    
    static var previews: some View {
        AboutViewDemo()
    }
}
