//
//  PaywallMessage.swift
//  Dating
//
//  Created by Антон Разгуляев on 07.07.2025.
//

import SwiftUI

struct PaywallMessage: View {
    let firstText: String
    let secondText: String
    let thirdText: String
    let image: String
    
    var body: some View {
        VStack {
            Group {
                Text(firstText)
                    .foregroundStyle(.black)
                + Text(secondText)
                    .foregroundStyle(Color.paywallPink)
                + Text(thirdText)
                    .foregroundStyle(.black)
            }
            .font(.custom("Lato-ExtraBold", size: 28))
            .multilineTextAlignment(.center)
            .frame(height: 68, alignment: .center)
            .padding(.horizontal)
            .padding(.bottom, -8)
            Image(image)
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    PaywallMessage(firstText: "Get ", secondText: "599 coins ", thirdText: "NOW And Every Week", image: "paywall1")
}
