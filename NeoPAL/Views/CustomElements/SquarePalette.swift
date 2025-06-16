//
//  SquarePalette.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//

import SwiftUI

struct SquarePalette: View {
    var paletteColors: [Color]
    var dim: CGFloat = 180
    var padding: CGFloat = 15
    var cornerRadius: CGFloat = 20
    var bottomCnt: Int {
        paletteColors.count / 2
    }
    var bottomWidth: CGFloat {
        dim / CGFloat(bottomCnt)
    }
    var bottomHeight: CGFloat {
        dim * (CGFloat(bottomCnt) / CGFloat(topCnt + bottomCnt))
    }
    var topCnt: Int {
        paletteColors.count - bottomCnt
    }
    var topWidth: CGFloat {
        dim / CGFloat(topCnt)
    }
    var topHeight: CGFloat {
        dim * (CGFloat(topCnt) / CGFloat(topCnt + bottomCnt))
    }
    var body: some View {
        VStack (spacing: 0) {
            HStack (spacing: 0) {
                ForEach(0..<topCnt, id: \.self) { i in
                    Rectangle()
                        .fill(paletteColors[i])
                        .frame(height: topHeight)
                        .overlay(
                            Rectangle()
                                .stroke(Color.primaryText)
                        )
                }
            }
            HStack (spacing: 0) {
                ForEach(0..<bottomCnt, id: \.self) { i in
                    Rectangle()
                        .fill(paletteColors[topCnt + i])
                        .frame(height: bottomHeight)
                        .overlay(
                            Rectangle()
                                .stroke(Color.primaryText)
                        )
                }
            }
        }
        .frame(width: dim, height: dim)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(Color.primaryText)
       )
        .padding(15)
        .background(
            RoundedRectangle(cornerRadius: (cornerRadius + 10))
                .stroke(Color.primaryText)
        )
    }
}

#Preview {
    SquarePalette(paletteColors: [Color.red, Color.yellow, Color.green, Color.blue, Color.purple])
}
