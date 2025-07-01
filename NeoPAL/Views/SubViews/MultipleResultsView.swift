//
//  MultipleResults.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/17/25.
//

import SwiftUI

struct MultipleResultsView: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                BackButton(destination: AnyView(FromColorView()))
                Spacer()
                Text("Palette #20")
                    .font(.title)
                    .bold()
                    .underline()
                    .foregroundColor(Color.primaryText)
                
                Spacer()
                Color.clear
                    .frame(width: 32, height: 1)
            }
            .padding(.top, 36)
            .padding(.bottom, 36)
            .padding(.horizontal, 32)
            .background(Color.yellow)
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.primaryText),
                alignment: .bottom
            )
            ScrollView {
                VStack (spacing: 24) {
                    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue], savable: false)
                    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue], savable: false)
                    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue], savable: false)
                    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue], savable: false)
                    Palette(paletteColors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue], savable: false)
                    CustomButton(img: Image(systemName: "plus"), padding: 10, imgHeight: 40, backgroundColor: .primaryBackground,textColor: .primaryText, recolor: true, cornerRadius: 64)
                }
                .padding(32)
            }
            VStack {
                CustomButton(title:"Generate Again", padding: 16, cornerRadius: 64, destination: AnyView(GeneratorView()))
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 32)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        }
}

#Preview {
    MultipleResultsView()
}
