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
                BackButton(destination: AnyView(ContentView()))
                Spacer()
                Text("Generate Palette")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.primaryText)
                
                Spacer()
                Color.clear
                    .frame(width: 32, height: 1)
            }
            .padding(.horizontal, 32)
            .padding(.top, 32)
            .padding(.bottom, 24)
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.primaryText),
                alignment: .bottom
            )
            VStack(spacing: 36) {
                CustomButton(
                    title: "Pick a dominant color",
                    img: Image("photo"),
                    padding: 24,
                    backgroundColor: Color.primaryBackground,
                    textColor: Color.primaryText,
                    destination: AnyView(FromColorView())
                )

                Text("OR")

                CustomButton(
                    title: "Upload a photo",
                    img: Image("photo"),
                    padding: 24,
                    backgroundColor: Color.primaryBackground,
                    textColor: Color.primaryText,
                    destination: AnyView(FromPhotoView())
                )
            }
            .padding(.horizontal, 64)
            .padding(.vertical, 32)
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    GeneratorView()
}
