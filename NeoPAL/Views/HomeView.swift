//
//  ContentView.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/4/25.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    var body : some View {
        ScrollView {
            VStack(spacing: 32) {
                HStack {
                    Text("Hello, user!")
                        .font(.largeTitle)
                        .bold(true)
                        .foregroundColor(Color.primaryText)
                    Spacer()
                    Circle()
                        .fill(Color.secondaryBackground)
                        .stroke(Color.primaryText)
                        .frame(width: 50, height: 50)
                }
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.primaryText)
                    .frame(height: 200)
                HStack {
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.primaryText)
                        .frame(width: 150, height: 150)
                    Spacer()
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.primaryText)
                        .frame(width: 150, height: 150)
                }
                HStack {
                    Text("Recent Palettes")
                        .font(.title)
                        .bold(true)
                        .foregroundColor(Color.primaryText)
                    Spacer()
                }
                Palette(paletteColors: [Color.red, Color.blue, Color.yellow])
            }
            .padding(32)
        }
        .background(Color.primaryBackground)
    }
}
#Preview {
    HomeView()
}
