//
//  DLCBlockView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/18.
//

import SwiftUI

extension AnyTransition {
    
    static var DLCDetailTransition: Self {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .opacity)
        let removal = AnyTransition.offset(y: 500)
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}



struct DLCBlockView: View {
    var DLCInfo: DLCDetail = DLCDetail()
    @State var showDetail: Bool = false
    @State var metrics: GeometryProxy
    @State var loreIndex: Int = 0
    
    func changeLore(newLoreIndex: Int){
        var finalLoreIndex: Int = newLoreIndex
        finalLoreIndex = max(finalLoreIndex, 0)
        finalLoreIndex = min(finalLoreIndex, DLCInfo.lore.count-1)
        loreIndex = finalLoreIndex
    }
    
    var body: some View {
        VStack(spacing: 0){
            VStack{
                Image("rimworld-\(DLCInfo.name.lowercased())")
                    .resizable()
                    .scaledToFit()
                    .frame(width: metrics.size.width*0.65)
                ShadowText(text: DLCInfo.name, fontSize: 30)
            }
            .padding(20)
            VStack{
                if showDetail{
                    VStack(alignment: .leading){
                        Text(DLCInfo.introduction)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                        
                        let rows = [GridItem(spacing: 5), GridItem()]
                        
                        // 預覽圖區
                        if DLCInfo.imageCount > 0{
                            ScrollView(.horizontal) {
                                LazyHGrid(rows: rows) {
                                    ForEach(1 ..< DLCInfo.imageCount + 1){
                                        index in
                                        Image("\(DLCInfo.name.lowercased())-\(String(index))")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: metrics.size.width*0.45)
                                    }
                                }
                                .frame(height: metrics.size.width*0.55)
                            }
                        }
                        
                        // 文字描述
                        if DLCInfo.lore.count > 0{
                            VStack{
                                HStack{
                                    Image(systemName: "chevron.left")
                                        .frame(width: 50)
                                        .foregroundColor(.white)
                                        .clipShape(Circle())
                                        .shadow(radius: 10)
                                        .overlay(Circle()
                                            .stroke(Color.purple, lineWidth: 1)
                                            .scaleEffect(2.0)
                                        ).onTapGesture {
                                            changeLore(newLoreIndex: loreIndex - 1)
                                        }
                                    
                                    Spacer()
                                    
                                    Text(DLCInfo.lore[loreIndex][0])
                                        .foregroundColor(.white)
                                        .font(.system(size: 22, weight: .heavy))
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .frame(width: 50)
                                        .foregroundColor(.white)
                                        .clipShape(Circle())
                                        .shadow(radius: 10)
                                        .overlay(Circle()
                                            .stroke(Color.purple, lineWidth: 1)
                                            .scaleEffect(2.0)
                                        ).onTapGesture {
                                            changeLore(newLoreIndex: loreIndex + 1)
                                        }
                                }
                                
                                Divider()
                                    .frame(height: 2)
                                    .overlay(.white)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                                
                                Text(DLCInfo.lore[loreIndex][1])
                                    .foregroundColor(.white)
                            }
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                        }
                    }
                    .frame(width: metrics.size.width*0.65)
                    .transition(.DLCDetailTransition)
                }
            }
            .animation(.easeIn(duration: 0.3), value: showDetail)
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        .onTapGesture {
            showDetail.toggle()
        }
        .frame(width: metrics.size.width*0.65)
    }
}

struct DLCBlockView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { metrics in
            DLCBlockView(metrics: metrics)
        }
    }
}
