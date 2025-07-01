//
//  CVDFilterResult.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/17/25.
//

import SwiftUI

struct CVDFilterResultView: View {
    var body: some View {
        VStack(alignment: .center) {
            ZStack (alignment: .top){
                VerticalPalette(paletteColors: [.red, .orange, .yellow, .green, .blue])
                HStack {
                    BackButton(destination: AnyView(SingleResultView()))
                    Spacer()
                }
                .padding(.horizontal, 32)
            }
            Spacer()
            Text("CVD Filter")
                .font(.title)
                .bold()
                .underline()
                .foregroundColor(.primaryText)
            Spacer()
            CVDSelector(split: true)
            Spacer()
            VStack (spacing: 24){
                Text("Contrast Score: 73%")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.primaryText)
                CustomButton(title:"Save to Library", padding: 12, cornerRadius: 64)
                
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 28)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        }
}

#Preview {
    CVDFilterResultView()
}
