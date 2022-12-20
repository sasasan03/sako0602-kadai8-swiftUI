//
//  ItemView.swift
//  kadai8-sako0602-SwiftUI
//
//  Created by sako0602 on 2022/12/20.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var currentValue: Double
    var backGroundColor: Color
    
    var body: some View {
        ZStack{
            backGroundColor
            VStack {
                Text("\(currentValue)")
                Slider(value: $currentValue,
                       in: 0...1
                )
            }
            .padding()
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(currentValue: Binding<Double>.constant(0.5), backGroundColor: Color.orange)
    }
}


    
    

