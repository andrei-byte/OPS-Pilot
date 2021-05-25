//
//  ContentView.swift
//  OPS Pilot
//
//  Created by Caleb Wells on 5/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ORMTabView()
                .tabItem {
                    Image(systemName: "note.text")
                    Text("ORM")
                }
                .tag(0)
            
            Text("Settings")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
        }
    }
}
