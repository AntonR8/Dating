//
//  ProfileCardButton.swift
//  Dating
//
//  Created by Антон Разгуляев on 06.07.2025.
//

import SwiftUI

struct ProfileCardButtons: View {
    var body: some View {
        HStack(spacing: 22) {
            Button {
                
            } label: {
                Image("icon-chat-label")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 21, height: 21)
            }
            Button {
                
            } label: {
                Image("btn-live")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
            }
            Button {
                
            } label: {
                Image("icon-favorite-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 21, height: 21)
            }
            
        }
    }
}

#Preview {
    ProfileCardButtons()
}
