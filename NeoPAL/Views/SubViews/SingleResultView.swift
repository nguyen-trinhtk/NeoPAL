//
//  SingleResult.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/17/25.
//

import SwiftUI

struct SingleResultView: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                BackButton(destination: AnyView(FromPhotoView()))
                Spacer()
                Text("Palette #20")
                    .font(.title)
                    .bold()
                    .underline()
                    .foregroundColor(Color.primaryText)
                
                Spacer()
                Color.clear
                    .frame(width: 32, height: 1)
            }
            .padding(.top, 32)
            .padding(.bottom, 32)
            .padding(.horizontal, 32)
            VerticalPalette(paletteColors: [.red, .orange, .yellow, .green, .blue], addable: true)
            Spacer()
            VStack (spacing: 24){
                CustomButton(title:"Apply CVD Filter", padding: 12, backgroundColor: .primaryBackground, textColor: .primaryText, cornerRadius: 64, destination: AnyView(CVDFilterResultView()))
                CustomButton(title:"Save to Library", padding: 12, backgroundColor: .primaryBackground, textColor: .primaryText, cornerRadius: 64, destination: AnyView(SavedView()))
                
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 28)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        }
}

#Preview {
    SingleResultView()
}
