//
//  BackButton.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//
import SwiftUI

struct BackButton: View {
    var body: some View {
        CustomButton(img: Image(systemName: "chevron.left"), padding: 8, width: 16, imgHeight: 16, backgroundColor: Color.primaryBackground, textColor: Color.primaryText, recolor: true, cornerRadius: 8, onPress: {print("Go back")})
    }
}

#Preview {
    BackButton()
}
