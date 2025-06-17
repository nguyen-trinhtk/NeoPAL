//
//  VerticalPalette.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/17/25.
//

import SwiftUI

struct VerticalPalette: View {
    var paletteColors: [Color]
    var addable: Bool = false
    var body: some View {
        VStack(spacing: 0) {
            ForEach(paletteColors, id: \.self) { color in
                HStack {
                    Spacer()
                    Text("#FFFFFF")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .padding(20)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .background(color)
            }
            if addable {
                CustomButton(img: Image(systemName: "plus"), padding: 16, imgHeight: 32, backgroundColor: .primaryBackground,textColor: .primaryText, recolor: true, cornerRadius: 0)
            }
        }
    }
}

#Preview {
    VerticalPalette(paletteColors: [.red, .orange, .yellow, .green, .blue])
}

