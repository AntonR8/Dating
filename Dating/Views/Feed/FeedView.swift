//
//  FeedView.swift
//  Dating
//
//  Created by Антон Разгуляев on 06.07.2025.
//

import SwiftUI


enum FeedSelection {
    case online
    case popular
    case new
    case following
}


struct FeedView: View {
    @State var selection: FeedSelection = .online
    
    var body: some View {
        VStack {
            HStack {
                Button("Online") { selection = .online }
                    .foregroundStyle(selection == .online ? .black : Color.silver)
                Spacer()
                Button("Popular") { selection = .popular }
                    .foregroundStyle(selection == .popular ? .black : Color.silver)
                Spacer()
                Button("New") { selection = .new }
                    .foregroundStyle(selection == .new ? .black : Color.silver)
                Spacer()
                Button("Following") { selection = .following }
                    .foregroundStyle(selection == .following ? .black : Color.silver)
            }
            .font(.custom("Lato-ExtraBold", size: 18))
            .padding(20)
            
            TabView(selection: $selection) {
                FeedOnlineView().tag(FeedSelection.online)
                Text("Popular").tag(FeedSelection.popular)
                Text("New").tag(FeedSelection.new)
                Text("Following").tag(FeedSelection.following)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
        }
        
        
    }
}

#Preview {
    FeedView()
}
