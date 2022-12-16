//
//  ContentView.swift
//  kadai8-sako0602-SwiftUI
//
//  Created by sako0602 on 2022/12/16.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentValue:Double = 0
    
    var body: some View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
