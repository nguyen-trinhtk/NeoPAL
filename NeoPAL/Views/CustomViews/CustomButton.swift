//
//  CustomButton.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/15/25.
//
import SwiftUI

struct CustomButton: View {
    var title: String? = nil
    var subtitle: String? = nil
    var img: Image? = nil
    var padding: CGFloat = 32
    var width: CGFloat? = .infinity
    var imgHeight: CGFloat = 100
    var backgroundColor: Color? = Color.buttonBackground
    var textColor: Color? = Color.buttonText
    var recolor: Bool = false
    var cornerRadius: CGFloat = 24
    var onPress: () -> Void = {}
    
    var body: some View {
        Button(action: onPress) {
            VStack {
                if let img = img {
                    img
                        .resizable()
                        .renderingMode(recolor ? .template : nil)
                        .scaledToFit()
                        .frame(height: imgHeight)
                        .foregroundColor(textColor)
                }
                if let title = title {
                    Text(title)
                        .font(.title2)
                        .bold()
                        .foregroundColor(textColor)
                }
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
        .buttonStyle(PlainButtonStyle())
    }
}
#Preview {
    CustomButton(img: Image("photo"), onPress: {print("Button tapped!")})
}
