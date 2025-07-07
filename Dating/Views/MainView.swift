//
//  ContentView.swift
//  Dating
//
//  Created by Антон Разгуляев on 06.07.2025.
//  Start: 17:40
//   Pause 18:38
//   Continue: 19:30
//   Pause 21:45
//   Continue: 10:50
//   Pause 12:15
//   Continue: 12:45
//   Finished: 13:21
//   Total: 1 + 2.5 + 1.5 + 0.7 = 6 часов


import SwiftUI

struct MainView: View {
    @State var showPaywall: Bool = false
    @State var selection = "Feed"
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                Text("Live")
                    .tabItem {
                        Image(systemName: "video")
                        Text("Live")
                    }
                    .tag("Live")
                FeedView()
                    .tabItem {
                        Image(systemName: "person.crop.square.on.square.angled.fill")
                        Text("Feed")
                    }
                    .tag("Feed")
                Text("Chat")
                    .tabItem {
                        Image(systemName: "ellipsis.bubble")
                        Text("Chat")
                    }
                    .tag("Chat")
                Text("Profile")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                    .tag("Profile")
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    ScoreButton(showPaywall: $showPaywall)     
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Title(selection: $selection)
                }
            }
            .fullScreenCover(isPresented: $showPaywall) {
                Paywall(showPaywall: $showPaywall)
            }
        }
        .preferredColorScheme(.light)
    }
}

#Preview {
    MainView()
}
