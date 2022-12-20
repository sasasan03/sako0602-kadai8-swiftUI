//
//  ContentView.swift
//  kadai8-sako0602-SwiftUI
//
//  Created by sako0602 on 2022/12/16.
//

import SwiftUI

//enum ViewType: Int {
//    case orange
//    case green
//    var type: Int {
//        switch self {
//        case .orange: return 0
//        case .green: return 1
//        }
//    }
//}

struct ContentView: View {
    
    @State private var currentValue:Double = 0
    @State private var selectedTag = 1
//    @State private var viewType1 = ViewType.orange
//    @State private var viewType2 = ViewType.green
    
    var body: some View {
        TabView (selection: $selectedTag) {
            //インスタンス化する必要はない
//            let orangeItemView = OrangeItemView(currentValue: $currentValue)
//            let greenItemView = GreenItemView(currentValue: $currentValue)
//            orangeItemView
            ItemView(currentValue: $currentValue, backGroundColor: Color.orange)
                .tabItem {
                    Text("Item")
                }.tag(1)
//            greenItemView
            ItemView(currentValue: $currentValue, backGroundColor: Color.green)
                .tabItem {
                    Text("Item")
                }.tag(2)
        }
    }
}
//Struct ItemViewを作ったため不要になった。
//struct OrangeItemView: View {
//
//    @Binding var currentValue: Double
//
//    var body: some View {
//        ZStack{
//            Color.orange
//            VStack {
//                Text("\(currentValue)")
//                Slider(value: $currentValue,
//                       in: 0...1
//                )
//            }
//            .padding()
//        }
//    }
//}
//struct GreenItemView: View {
//
//    @Binding var currentValue: Double
//
//    var body: some View {
//        ZStack{
//            Color.green
//            VStack {
//                Text("\(currentValue)")
//                Slider(value: $currentValue,
//                       in: 0...1
//                )
//            }
//            .padding()
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
