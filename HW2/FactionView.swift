//
//  FractionView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/14.
//

import SwiftUI

struct Faction: Identifiable{
    let id = UUID()
    let name: String
    let image: String
}

struct FactionView: View {
    var body: some View {
        let factions = [
            Faction(name: "部落", image: "tribe-image"),
            Faction(name: "異鄉人", image: "outlanders-image"),
            Faction(name: "海盜", image: "pirate-image"),
            Faction(name: "帝國", image: "empire-image"),
            Faction(name: "機械族", image: "mechanoids-image"),
            Faction(name: "蟲族", image: "insectoids-image"),
            Faction(name: "先祖", image: "ancients-image")
        ]
        
        let columns = Array(repeating: GridItem(), count: 1)
        ZStack(alignment: .center){
            //            Image("rimworld-bg-no-word-hyper")
            //                .resizable()
            //                .ignoresSafeArea()
            //                .scaledToFill()
            NavigationView {
                VStack(alignment: .leading, spacing: 0){
                    Text("陣營")
                        .font(.system(size: 36, weight: .heavy))
                        .padding(20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color("panel-1"))
                    
                    ScrollView{
                        LazyVGrid(columns: columns, alignment: .leading, spacing: 30) {
                            ForEach(factions) {
                                faction in
                                NavigationLink {
                                    FactionDetailView(factionName: faction.name)
                                }label:{
                                    HStack{
                                        Image("\(faction.image)")
                                            .resizable()
                                            .frame(width: 60, height: 60)
                                            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 0))
                                        Text("\(faction.name)")
                                            .font(.system(size: 22, weight: .bold))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(20)
                                    }
                                    .background(Color("panel-1"))
                                    .padding(10)
                                }.foregroundColor(.primary)
                            }
                        }.padding(30)
                    }
                }.background(Image("rimworld-bg-no-word-hyper")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill())
            }
        }
    }
}

struct FactionView_Previews: PreviewProvider {
    static var previews: some View {
        FactionView()
    }
}
