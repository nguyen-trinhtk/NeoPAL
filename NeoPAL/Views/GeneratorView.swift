//
//  GeneratorView.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/15/25.
//
import SwiftUI

struct GeneratorView: View {
    var body: some View {
        VStack (spacing: 40) {
            Text("Create a palette")
                .font(.largeTitle)
                .bold(true)
                .foregroundColor(Color.primaryText)
            CustomButton(title: "Pick a dominant color", img: Image("photo"), padding: 24, backgroundColor: Color.primaryBackground, textColor: Color.primaryText)
            Text("OR")
            CustomButton(title: "Upload a photo", img: Image("photo"), padding: 24, backgroundColor: Color.primaryBackground, textColor: Color.primaryText)
        }
        .padding(64)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    GeneratorView()
}
