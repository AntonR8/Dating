//
//  FeedOnlineView.swift
//  Dating
//
//  Created by Антон Разгуляев on 06.07.2025.
//

import SwiftUI

struct FeedOnlineView: View {
    let profiles: [DatingProfile] = mockDatingProfiles
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 12) {
                ForEach(profiles) { profile in
                    ProfileCardView(profile: profile)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    FeedOnlineView()
}
