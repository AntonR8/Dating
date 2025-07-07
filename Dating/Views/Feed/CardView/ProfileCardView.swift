//
//  CardView.swift
//  Dating
//
//  Created by Антон Разгуляев on 06.07.2025.
//

import SwiftUI

struct ProfileCardView: View {
    let profile: DatingProfile
    
    let width = UIScreen.main.bounds.width/2 - 24
    var height: CGFloat { width / 166 * 238 }
    let cornerRadius: CGFloat = 12
    
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(Color.black)
            .frame(width: width, height: height)
            .overlay {
                ProfileCardPhoto(imageName: profile.photo)
                    .frame(width: width, height: height)
                    .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                VStack {
                    HStack {
                        OnlineLabel(status: profile.onlineStatus)
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Image(profile.country)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14)
                            .clipShape(Circle())
                        
                        Text("\(profile.name), \(profile.age)")
                            .foregroundStyle(.white)
                            .font(.custom("Lato-ExtraBold", size: 15))
                    }
                    ProfileCardButtons()
                }
                .padding()
            }
    }
}

#Preview {
    ProfileCardView(profile: mockDatingProfiles[0])
}
