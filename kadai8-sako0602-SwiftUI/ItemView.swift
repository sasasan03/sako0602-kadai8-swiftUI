//
//  ItemView.swift
//  kadai8-sako0602-SwiftUI
//
//  Created by akio0911 on 2022/12/20.
//

import SwiftUI

struct ItemView: View {

    @Binding var currentValue: Double

    let backgroundColor: Color

    var body: some View {
        ZStack{
            backgroundColor
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
        ItemView(
            currentValue: Binding<Double>.constant(0.5),
            backgroundColor: Color.orange
        )
    }
}
