//
//  GeneratorView.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/15/25.
//

import SwiftUI

struct GeneratorView: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                BackButton()
                Spacer()
                Text("Generate Palette")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.primaryText)
                
                Spacer()
                Color.clear
                    .frame(width: 32, height: 1)
            }
            .padding(.vertical, 36)
            
            VStack(spacing: 36) {
                CustomButton(
                    title: "Pick a dominant color",
                    img: Image("photo"),
                    padding: 24,
                    backgroundColor: Color.primaryBackground,
                    textColor: Color.primaryText
                )

                Text("OR")

                CustomButton(
                    title: "Upload a photo",
                    img: Image("photo"),
                    padding: 24,
                    backgroundColor: Color.primaryBackground,
                    textColor: Color.primaryText
                )
            }
            .padding(.horizontal, 32)
        }
        .padding(.horizontal, 32)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    GeneratorView()
}
