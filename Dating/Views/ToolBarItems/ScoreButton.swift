//
//  ScoreButton.swift
//  Dating
//
//  Created by Антон Разгуляев on 07.07.2025.
//

import SwiftUI

struct ScoreButton: View {
    @Binding var showPaywall: Bool
    
    var body: some View {
        Button {
            showPaywall = true
        } label: {
            HStack {
                Text("78")
                    .font(.custom("Lato-SemiBold", size: 15))
                    .foregroundStyle(.white)
                    .padding(.leading, 14)
                Image("icon-coin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22.67)
            }
            .padding(4)
            .background(Color.silver.opacity(0.55))
            .clipShape(Capsule())
        }
    }
}

#Preview {
    ScoreButton(showPaywall: .constant(false))
}
