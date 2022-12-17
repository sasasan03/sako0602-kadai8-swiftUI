//
//  ContentView.swift
//  kadai8-sako0602-SwiftUI
//
//  Created by sako0602 on 2022/12/16.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentValue:Double = 0
    @State private var selectedTag = 1
    
    var body: some View {
        TabView(selection: $selectedTag) {
            let orangeItemView = OrangeItemView(currentValue: $currentValue)
            let greenItemView = GreenItemView(currentValue: $currentValue)
            orangeItemView
                .tabItem {
                    Text("Item")
                }.tag(1)
            greenItemView
                .tabItem {
                    Text("Item")
                }.tag(2)
        }
    }
}

struct OrangeItemView: View {
    
    @Binding var currentValue: Double
    
    var body: some View {
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
    }
}

struct GreenItemView: View {
    
    @Binding var currentValue: Double
    
    var body: some View {
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
