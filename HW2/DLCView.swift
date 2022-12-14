//
//  DLCView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/15.
//

import SwiftUI

struct DLCView: View {
    var body: some View {
        GeometryReader { metrics in
            ZStack(alignment: .center){
                Image("rimworld-bg-no-word-hyper")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .frame(width:metrics.size.width * 1.0)
                
                VStack(alignment: .center, spacing: 0){
                    GlitchTextView(text: "DLC", fontSize: 35)
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    Divider()
                        .frame(height: 2)
                        .overlay(.white)
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
                    
                    List{
                        Group{
                            ForEach(DLCTable) {
                                DLCInfo in
                                HStack{
                                    Spacer()
                                    DLCBlockView(DLCInfo: DLCInfo, metrics: metrics)
                                    Spacer()
                                }.listRowBackground(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
                            }
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0, green: 0, blue: 0, opacity: 0), Color(red: 0, green: 0, blue: 1, opacity: 0.2)]), startPoint: .top, endPoint: .bottom))
                    
                }
            }
        }
    }
    
    struct DLCView_Previews: PreviewProvider {
        static var previews: some View {
            DLCView().onAppear(){
                UITableViewCell.appearance().backgroundColor = .clear
            }
        }
    }
}
