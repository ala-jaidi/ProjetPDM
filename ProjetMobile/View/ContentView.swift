//
//  ContentView.swift
//  ProjetMobile
//
//  Created by IssamGuezmir on 6/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VideoHomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            VideoPrexelsView()
                .tabItem {
                    Label("Prexels", systemImage: "photo")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

