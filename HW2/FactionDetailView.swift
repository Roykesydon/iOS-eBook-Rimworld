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
        ScrollView{
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
                    
                    Text(self.factionInfo.introduction)
                }
                .padding(20)
                .frame(height: 200, alignment: .center)
                .background(Color(red: 36/256, green: 36/256, blue: 36/256, opacity: 1.0))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                
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
                
                // 單位
                
            }
        }
        //        .navigationTitle(factionName)
        //        .navigationBarTitleDisplayMode(.large)
    }
}

struct FactionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FactionDetailView(factionName: "機械族")
    }
}
