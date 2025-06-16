//
//  CustomButton.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/15/25.
//
import SwiftUI

struct CustomButton: View {
    var title: String
    var subtitle: String? = nil
    var img: Image? = nil
    var padding: CGFloat = 32
    var width: CGFloat? = .infinity
    var imgHeight: CGFloat = 100
    var backgroundColor: Color? = Color.buttonBackground
    var textColor: Color? = Color.buttonText
    var cornerRadius: CGFloat = 24
//    var onPress: () -> Void = {}
    
    var body: some View {
        VStack {
            if let img = img {
                img
                    .resizable()
                    .scaledToFit()
                    .frame(height: imgHeight)
            }
            Text(title)
                .font(.title2)
                .bold(true)
                .foregroundColor(textColor)
            if let subtitle = subtitle {
                Text(subtitle)
                    .foregroundColor(textColor)
            }
        }
        .frame(maxWidth: width)
        .padding(padding)
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(Color.primaryText)
        )
    }
}

#Preview {
    CustomButton(title: "Pick a dominant color", img: Image("photo"))
}
