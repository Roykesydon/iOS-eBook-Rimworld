//
//  FactionDetailView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/15.
//

import SwiftUI

struct FactionDetailView: View {
    let factionName: String
    var factionInfo: FactionDetail = FactionDetail()
    
    init(factionName: String){
        self.factionName = factionName
        
        for factionData in factionTable{
            if factionName == factionData.name{
                factionInfo = factionData
            }
        }
    }
    
    var body: some View {
        GeometryReader { metrics in
            ZStack{
//                Image("rimworld-bg-no-word-hyper")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//                    .background(.black)
                VStack{
                }
                .frame(width: metrics.size.width * 1, height: metrics.size.height * 1)
                .background(.black)
                
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading){
                        // 標題和簡介
                        HStack{
                            VStack(alignment: .center){
                                Image(self.factionInfo.image)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                Text(self.factionInfo.name)
                                    .font(.system(size: 22, weight: .bold))
                                    .frame(maxWidth: .infinity)
                                Text(self.factionInfo.engName)
                                    .font(.system(size: 15, weight: .bold))
                                    .frame(maxWidth: .infinity)
                            }
                            .frame(width:100)
                            
                            Spacer()
                            
                            ScrollView{
                                Text(self.factionInfo.introduction)
                            }
                        }
                        .padding(20)
                        .frame(height: 200, alignment: .center)
                        .background(Color("panel-1"))
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
                        
                        // 文字描述
                        ForEach(self.factionInfo.lore, id:\.self) { array in
                            VStack(alignment: .leading){
                                Text(array[0])
                                    .font(.system(size: 25, weight: .bold))
                                
                                Divider()
                                    .frame(height: 2)
                                    .overlay(.primary)
                                
                                Text(array[1])
                            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                        }
                        .padding(20)
                        .background(Color("panel-1"))
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                        
                        // 單位
                        
                    }
                }
                .padding(20)
            }
        }
    }
}

struct FactionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FactionDetailView(factionName: "機械族")
    }
}
