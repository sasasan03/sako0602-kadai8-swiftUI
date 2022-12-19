//
//  ContentView.swift
//  kadai8-sako0602-SwiftUI
//
//  Created by sako0602 on 2022/12/16.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentValue: Double = 0
    @State private var selectedTag = 1
    
    var body: some View {
        TabView(selection: $selectedTag) {
            ItemView(currentValue: $currentValue, backgroundColor: Color.orange)
                .tabItem {
                    Text("Item")
                }.tag(1)
            ItemView(currentValue: $currentValue, backgroundColor: Color.green)
                .tabItem {
                    Text("Item")
                }.tag(2)
        }
    }
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
