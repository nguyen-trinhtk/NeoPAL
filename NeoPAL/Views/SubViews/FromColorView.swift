//
//  FromColorView.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//
import SwiftUI

struct FromColorView: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                BackButton()
                Spacer()
                Text("Pick A Color")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color.primaryText)
                
                Spacer()
                Color.clear
                    .frame(width: 32, height: 1)
            }
            Spacer()
            VStack (spacing: 12) {
                Text("#FFFFFF")
                    .font(.system(size: 40, weight: .black))
                    .foregroundColor(Color.primaryText)
                RoundedRectangle(cornerRadius: 1)
                    .fill(Color.primaryText)
                    .frame(width: 60, height: 3)
                Text("Blanched Almond")
                    .font(.title3)
                    .bold()
                    .foregroundColor(Color.primaryText)
            }
            Spacer()
            ColorPicker()
        }
        .padding(32)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    FromColorView()
}
