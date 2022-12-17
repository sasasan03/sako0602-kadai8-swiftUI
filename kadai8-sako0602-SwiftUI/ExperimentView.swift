//
//  ExperimentView.swift
//  kadai8-sako0602-SwiftUI
//
//  Created by sako0602 on 2022/12/17.
//

import SwiftUI

enum CalcType {
    case addition
    case subtraction
}

struct ExperimentView: View {

    @State private var currentValue:Double = 0
    @State private var calcType: CalcType = .addition
    @State private var selectedTag = 1
    
    var body: some View {
        
        //------------------------------------[①
        TabView{
            ZStack{
                Color.orange
                VStack {
                    Text("\(currentValue)")
                    Slider(value: $currentValue,
                           in: 0...1
                    )
                }
                .padding()
            }
            .tabItem {
                Text("Item")
            }
            ZStack{
                Color.green
                VStack {
                    Text("\(currentValue)")
                    Slider(value: $currentValue,
                           in: 0...1
                    )
                }
                .padding()
            }
            .tabItem {
                Text("Item")
            }
        }
    }
}
       //--------------------------------------①]

       //--------------------------------------[①
       //            課題（switch）を使うとtagが一つしか出てこなくなる
       //        TabView {
       //            switch calcType {
       //            case .addition:
       //                Item1View(currentValue: $currentValue)
       //                    .tabItem {
       //                        Text("Item")
       //                    }
       //            case .subtraction:
       //                Item2View(currentValue: $currentValue)
       //                    .tabItem {
       //                        Text("Item")
       //                    }
       //            }
       //        }
       //--------------------------------------①]

struct ExperimentView_Previews: PreviewProvider {
    static var previews: some View {
        ExperimentView()
    }
}
