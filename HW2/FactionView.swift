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
    init() { UITableView.appearance().backgroundColor = UIColor.clear }
    
    var body: some View {
        let humanLeaderFactions = [
            Faction(name: "部落", image: "tribe-image"),
            Faction(name: "異鄉人", image: "outlanders-image"),
            Faction(name: "海盜", image: "pirate-image"),
            Faction(name: "帝國", image: "empire-image"),
        ]
        
        let leaderlessFactions = [
            Faction(name: "機械族", image: "mechanoids-image"),
            Faction(name: "蟲族", image: "insectoids-image"),
            Faction(name: "先祖", image: "ancients-image")
        ]
        
        
        GeometryReader { metrics in
            NavigationView {
                ZStack{
                    Image("rimworld-bg-no-word-hyper")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFill()
                        .frame(width:metrics.size.width * 0.2)
                    
                    
                    VStack(alignment: .leading, spacing: 0){
                        GlitchTextView(text: "陣營", fontSize: 35)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        Divider()
                            .frame(height: 2)
                            .overlay(.white)
                            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                        
                        List{
                            Section(header: ShadowText(text: "人類主導派系", fontSize: 20.0)){
                                Group{
                                    ForEach(humanLeaderFactions) {
                                        faction in
                                        FactionLinkView(faction: faction)
                                    }
                                }
                            }
                            Section(header: ShadowText(text: "無領袖派系", fontSize: 20.0)){
                                Group{
                                    ForEach(leaderlessFactions) {
                                        faction in
                                        FactionLinkView(faction: faction)
                                    }
                                }
                            }
                            
                        }.scrollContentBackground(.hidden)
                    }
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0, green: 0, blue: 0, opacity: 0), Color(red: 0, green: 0, blue: 1, opacity: 0.2)]), startPoint: .top, endPoint: .bottom))
                }
            }
            
        }
    }
}

struct FactionView_Previews: PreviewProvider {
    static var previews: some View {
        FactionView().onAppear(){
            UITableViewCell.appearance().backgroundColor = .clear
        }
    }
}

struct FactionLinkView: View {
    let faction: Faction
    
    var body: some View {
        VStack{
            NavigationLink {
                FactionDetailView(factionName: faction.name)
            }label:{
                HStack{
                    Image("\(faction.image)")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    Text("\(faction.name)")
                        .font(.system(size: 22, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(20)
                }
                .padding(10)
            }.foregroundColor(.primary)
        }.listRowBackground(Color("panel-1"))
    }
}
