//
//  Title.swift
//  Dating
//
//  Created by Антон Разгуляев on 07.07.2025.
//

import SwiftUI

struct Title: View {
    @Binding var selection: String
    
    var body: some View {
        Text(selection)
            .font(.custom("Lato-ExtraBold", size: 20))
            .frame(maxWidth: .infinity, alignment: .leadingLastTextBaseline)
    }
}

#Preview {
    Title(selection: .constant("Live"))
}
