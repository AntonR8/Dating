//
//  OnlineLabel.swift
//  Dating
//
//  Created by Антон Разгуляев on 06.07.2025.
//

import SwiftUI

struct OnlineLabel: View {
    let status: OnlineStatus
    var color: Color { getColor() }
    
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 3) {
            Image(systemName: "circle.fill")
                .foregroundColor(color)
                .font(.system(size: 7))
                .padding(.vertical, 6)
            Text(status.rawValue)
                .font(.custom("Lato-Bold", size: 10))
                .foregroundStyle(.white)
        }
        .padding(.horizontal, 6)
        .background(.black.opacity(0.4))
        .clipShape(Capsule())
    }

    
    func getColor() -> Color {
        switch status {
        case .online: .green
        case .offline: .gray
        case .recently: .yellow
        }
    }
}

#Preview {
    OnlineLabel(status: .online)
}
