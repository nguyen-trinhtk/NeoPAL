//
//  ColorFixerView.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//

import SwiftUI

struct ColorFixerView: View {
    var body: some View {
        ZStack {
            ARCamera()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                HStack {
                    BackButton()
                    Spacer()
                    Text("AR Color Fixer")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color.primaryText)
                    Spacer()
                    Color.clear
                        .frame(width: 32, height: 1)
                }
                .padding(.top, 36)
                .padding(.bottom, 48)
                .padding(.horizontal, 32)
                .background(Color.primaryBackground)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.primaryText),
                    alignment: .bottom
                )
                Spacer()
                CVDSelector()
            }
            .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    ColorFixerView()
}
