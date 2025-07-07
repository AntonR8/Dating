//
//  ProfileCardPhoto.swift
//  Dating
//
//  Created by Антон Разгуляев on 06.07.2025.
//

import SwiftUI

struct ProfileCardPhoto: View {
    let imageName: String
    
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
            VStack {
                Spacer()
                Image("blur-label")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

#Preview {
    ProfileCardView(profile: mockDatingProfiles[0])
}
