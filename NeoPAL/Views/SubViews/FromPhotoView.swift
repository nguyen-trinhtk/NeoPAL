//
//  FromPhotoView.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//

import SwiftUI

struct FromPhotoView: View {
    var body: some View {
        VStack {
            HStack {
                BackButton(destination: AnyView(GeneratorView()))
                Spacer()
                Text("Upload A Photo")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color.primaryText)
                
                Spacer()
                Color.clear
                    .frame(width: 32, height: 1)
            }
            .padding(32)
            PhotoUploader()
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    FromPhotoView()
}
