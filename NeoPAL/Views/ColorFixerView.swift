//
//  ColorFixerView.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//

import SwiftUI

struct ColorFixerView: View {
    var body: some View {
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
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.primaryText),
                alignment: .bottom
            )
            Spacer()
            FixerSelector()
        }
        .frame(maxHeight: .infinity, alignment: .top)
        }
}

#Preview {
    ColorFixerView()
}
