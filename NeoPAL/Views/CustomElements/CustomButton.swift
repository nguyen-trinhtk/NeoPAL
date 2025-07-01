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
    var destination: AnyView? = nil // New parameter for navigation destination
    
    var body: some View {
        // If destination is provided, wrap in NavigationLink
        if let destination = destination {
            NavigationLink(destination: destination) {
                buttonContent
            }
            .buttonStyle(PlainButtonStyle())
        } else {
            Button(action: onPress) {
                buttonContent
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
    
    // Extract button content to avoid duplication
    private var buttonContent: some View {
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
}
#Preview {
    NavigationView {
        VStack {
            CustomButton(
                title: "Regular Button",
                img: Image("photo")
            ) {
                print("Button tapped!")
            }
            
            CustomButton(
                title: "Navigation Button",
                img: Image("photo"),
                destination: AnyView(Text("Destination View"))
            )
        }
    }
}
