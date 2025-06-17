//
//  Palette.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/14/25.
//

import SwiftUI

struct Palette: View {
    var paletteColors: [Color]
    var savable: Bool = false
    var body: some View {
        HStack (spacing: 18){
            HStack (spacing: 0) {
                ForEach(paletteColors, id: \.self) { color in
                    Rectangle()
                        .fill(color)
                        .frame(height: savable ? 40 : 60)
                        .overlay(
                            Rectangle()
                                .stroke(Color.primaryText, lineWidth: 1)
                        )
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: savable ? 16 : 30))
            .overlay(
                RoundedRectangle(cornerRadius: savable ? 16 : 30)
                    .stroke(Color.primaryText)
            )
            if (savable) {
                Image(systemName: "heart")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(height: 36)
                    .foregroundColor(Color.primaryText)
            }
        }
    }
}

#Preview {
    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue], savable: false)
}
