//
//  Palette.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/14/25.
//

import SwiftUI

struct Palette: View {
    var paletteColors: [Color]
    var body: some View {
        HStack (spacing: 0) {
            ForEach(paletteColors, id: \.self) { color in
                Rectangle()
                    .fill(color)
                    .frame(height: 60)
                    .overlay(
                        Rectangle()
                            .stroke(Color.primaryText, lineWidth: 1)
                )
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.primaryText)
       )
    }
}
