//
//  AccountView.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//
import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                BackButton(destination: AnyView(ContentView()))
                Spacer()
                Text("Your Profile")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.primaryText)
                
                Spacer()
                Color.clear
                    .frame(width: 32, height: 1)
            }
            .padding(.top, 36)
            .padding(.bottom, 0)
            .padding(.horizontal, 32)
            Spacer()
            AvatarUploader()
            HStack (spacing: 8) {
                Text("First")
                    .font(.title)
                    .bold()
                    .foregroundColor(.primaryText)
                Text("Last")
                    .font(.title)
                    .bold()
                    .foregroundColor(.primaryText)
            }
            Spacer()
            HStack (spacing: 16){
                CustomButton(title:"Feature 1",
                padding: 8,backgroundColor: .primaryBackground, textColor: .primaryText)
                CustomButton(title:"Feature 2",
                padding: 8,backgroundColor: .primaryBackground, textColor: .primaryText)
            }
            .padding(.horizontal, 36)
            Spacer()
            HStack {
                CustomButton(title:"View all saved palettes",
                             padding: 16,backgroundColor: .primaryBackground, textColor: .primaryText, cornerRadius: 64, destination: AnyView(SavedView()))
            }
            .padding(.horizontal, 36)
            Spacer()
            VStack(alignment: .leading, spacing: 8) {
                Text("Fun fact")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.primaryText)

                Text("Lorem ipsum something like that this is a feature description Lorem ipsum something like that this is a feature description")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
            }
            .padding(.top, 16)
            .padding(.horizontal, 24)
            .background(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(Color.primaryText)
            )
            .padding(.horizontal, 36)
            .padding(.bottom, 32)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        }
}

#Preview {
    ProfileView()
}
