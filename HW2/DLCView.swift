//
//  DLCView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/15.
//

import SwiftUI

struct DLCView: View {
    var body: some View {
        let columns = Array(repeating: GridItem(), count: 1)
        VStack(alignment: .leading){
            Text("DLC")
                .font(.system(size: 36, weight: .heavy))
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 36/256, green: 36/256, blue: 36/256, opacity: 1.0))
            NavigationView {
                ScrollView{
                }
            }
        }
    }
}

struct DLCView_Previews: PreviewProvider {
    static var previews: some View {
        DLCView()
    }
}
