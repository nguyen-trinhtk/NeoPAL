//
//  AvatarUploader.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/17/25.
//

import SwiftUI
import PhotosUI

struct AvatarUploader: View {
    @State private var selectedImage: UIImage? = nil
    @State private var isPickerPresented = false
    
    var body: some View {
        VStack {
            Button(action: {
                isPickerPresented = true
            }) {
                Group {
                    if let image = selectedImage {
                        Image(uiImage: image)
                            .resizable()
                    } else {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .foregroundColor(.secondaryBackground)
                    }
                }
                .aspectRatio(contentMode: .fill)
                .frame(width: 160, height: 160)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.primary)
                )
                .contentShape(Circle())            }
            .buttonStyle(PlainButtonStyle())

        }
        .padding()
        .sheet(isPresented: $isPickerPresented) {
            ImagePicker(selectedImage: $selectedImage)
        }
    }
}
