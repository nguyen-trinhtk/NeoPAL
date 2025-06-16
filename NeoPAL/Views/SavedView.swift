//
//  SavedView.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//
import SwiftUI

struct SavedView: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                BackButton()
                Spacer()
                Text("Saved Palettes")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.primaryText)
                
                Spacer()
                Color.clear
                    .frame(width: 32, height: 1)
            }
            .padding(.vertical, 36)
            ScrollView {
                HStack {
                    Text("Recently Added")
                        .font(.title2)
                        .bold(true)
                        .foregroundColor(Color.primaryText)
                    Spacer()
                }
                .padding(.bottom, 16)
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack (spacing: 40) {
                        SquarePalette(paletteColors: [Color.red, Color.yellow, Color.green, Color.blue, Color.purple])
                        SquarePalette(paletteColors: [Color.red, Color.yellow, Color.green, Color.blue, Color.purple])
                        SquarePalette(paletteColors: [Color.red, Color.yellow, Color.green, Color.blue, Color.purple])
                    }
                }
                .padding(.bottom, 16)
                HStack {
                    Text("All Saved Palettes")
                        .font(.title2)
                        .bold(true)
                        .foregroundColor(Color.primaryText)
                    Spacer()
                }
                .padding(.bottom, 16)
                VStack (spacing: 32) {
                    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue])
                    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue])
                    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue])
                    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue])
                    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue])
                    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue])
                }
                
            }
        }
        .padding(.horizontal, 32)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    SavedView()
}
