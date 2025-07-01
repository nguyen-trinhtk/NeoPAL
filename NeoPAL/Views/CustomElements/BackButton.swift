//
//  BackButton.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//
import SwiftUI

struct BackButton: View {
    var destination: AnyView? = nil
    var onPress: () -> Void = { print("Go back") }
    
    var body: some View {
        CustomButton(
            img: Image(systemName: "chevron.left"), 
            padding: 8, 
            width: 16, 
            imgHeight: 16, 
            backgroundColor: Color.primaryBackground, 
            textColor: Color.primaryText, 
            recolor: true, 
            cornerRadius: 8, 
            onPress: onPress,
            destination: destination
        )
    }
}

#Preview {
    NavigationView {
        VStack {
            // Back button with navigation
            BackButton(destination: AnyView(Text("Previous View")))
            
            Spacer().frame(height: 20)
            
            // Back button with custom action
            BackButton {
                print("Custom back action")
            }
        }
    }
}
