//
//  DLCBlockView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/18.
//

import SwiftUI

struct DLCBlockView: View {
    var DLCInfo: DLCDetail = DLCDetail()
    @State var showDetail: Bool = false
    
    var body: some View {
        VStack{
            VStack{
                Image("rimworld-\(DLCInfo.name.lowercased())")
                    .resizable()
                    .scaledToFill()
                ShadowText(text: DLCInfo.name, fontSize: 30)
            }
            .padding(20)
            .animation(.easeInOut(duration: 1.7), value: showDetail)
            
            if showDetail{
                VStack{
                    Text("test")
                        .foregroundColor(.white)
                    Text("test")
                        .foregroundColor(.white)
                    Text("test")
                        .foregroundColor(.white)
                    Text("test")
                        .foregroundColor(.white)
                    Text("test")
                        .foregroundColor(.white)
                    Text("test")
                        .foregroundColor(.white)
                    Text("test")
                        .foregroundColor(.white)
                    Text("test")
                        .foregroundColor(.white)
                    Text("test")
                        .foregroundColor(.white)
                }.transition(.opacity)
            }
        }
        .animation(.easeInOut(duration: 0.5), value: showDetail)
        .listRowBackground(Color(red: 0, green: 0, blue: 0, opacity: 0.8))
        .onTapGesture {
            showDetail.toggle()
        }
    }
}

struct DLCBlockView_Previews: PreviewProvider {
    static var previews: some View {
        DLCBlockView()
    }
}
