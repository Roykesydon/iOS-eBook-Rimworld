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
    
    var body: some View {
        ShadowText(text: title, fontSize: 30)
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
                        .offset(y:50)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 70, trailing: 0))
                    
                    ScrollView(showsIndicators: false){
                        // 宣傳片
                        VStack{
                            TitleDividerView(title: "宣傳片")
                            
                            VideoPlayer(player: trailerPlayer)
                                .scaledToFit()
                                .frame(maxWidth: metrics.size.width * 0.6, maxHeight:metrics.size.height * 0.5 , alignment: .center)
                        }
                        
                        // 簡介
                        TitleDividerView(title: "簡介")
                        
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
                    .frame(width: metrics.size.width * 0.8)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    .background(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
                    
                }
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
