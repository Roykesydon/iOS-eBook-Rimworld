//
//  TestView.swift
//  HW2
//
//  Created by roykesydone on 2022/10/22.
//

import SwiftUI

struct TestView: View {
    @Namespace private var shapeTransition
    
    @State var expand: Bool = false
    
    var body: some View {
        VStack{
            if expand {
                
                // Rounded Rectangle
                Spacer()
                
                RoundedRectangle(cornerRadius: 50.0)
                    .matchedGeometryEffect(id: "circle", in: shapeTransition)
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300)
                    .padding()
                    .foregroundColor(Color(.systemGreen))
                    .animation(.default)
                    .onTapGesture {
                        expand.toggle()
                    }
                
            } else {
                
                // Circle
                RoundedRectangle(cornerRadius: 50.0)
                    .matchedGeometryEffect(id: "circle", in: shapeTransition)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemOrange))
                    .animation(.easeIn)
                    .onTapGesture {
                        expand.toggle()
                    }
                
                Spacer()
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
