//
//  PhotoUploader.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/17/25.
//
import SwiftUI

struct PhotoUploader: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var uploadStatus = ""

    var body: some View {
        VStack(spacing: 80) {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.primaryText, lineWidth: 2)
                    .frame(width: 330, height: 330)

                if let selectedImage = selectedImage {
                    Image(uiImage: selectedImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 270, height: 270)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                } else {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(style: StrokeStyle(lineWidth: 2, dash: [8]))
                        .foregroundColor(.primaryText)
                        .frame(width: 270, height: 270)
                        .overlay(
                            VStack (spacing: 16) {
                                Image(.photo)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 200)
                                Text("No photo uploaded!")
                                    .font(.body)
                                    .foregroundColor(.secondaryText)
                            }
                        )
                }
            }
            if let _ = selectedImage {
                HStack (spacing: 24){
                    CustomButton(subtitle: "Change Photo", padding: 16, backgroundColor: .primaryBackground, textColor: .primaryText, onPress: {
                        showImagePicker = true
                    })
                    CustomButton(subtitle: "Generate", padding: 16, onPress: uploadImage)
                }
            }
            else {
                CustomButton(title: "Upload Photo", padding: 24, cornerRadius: 32, onPress: {
                    showImagePicker = true
                })
            }
            Text(uploadStatus)
                .foregroundColor(.gray)
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(selectedImage: $selectedImage)
        }
        .padding(32)
    }

    func uploadImage() {
        guard (selectedImage?.jpegData(compressionQuality: 0.8)) != nil else {
            uploadStatus = "Failed to get image data."
            return
        }

        // Simulated upload logic
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            uploadStatus = "Upload successful!"
        }
    }
}
