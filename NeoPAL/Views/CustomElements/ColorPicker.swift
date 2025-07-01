//
//  ColorPicker.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//
import SwiftUI

struct ColorPicker : View {
    @State private var red: Double = 128
    @State private var blue: Double = 128
    @State private var green: Double = 128
    
    @State private var selectedColorMode = "RGB"
    let colorModes = ["RGB", "HSL", "CMYK"]
    
    var body: some View {
        VStack (spacing: 16) {
            HStack {
                Text("Pick A Color")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.primaryText)
                Spacer()
                Picker("Select an option", selection: $selectedColorMode) {
                    ForEach(colorModes, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding(4)
                .background(Color.buttonBackground)
                .cornerRadius(16)
            }
            HStack (spacing: 16){
                Text("\(Int(red))")
                    .frame(width: 50, height: 40)
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.primaryText)
                    )
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.primaryText)
                
                Slider(value: $red, in: 0...255, step: 1)
                    .accentColor(.red)
                
                Text("R")
                    .font(.title2)
                    .foregroundColor(Color.primaryText)
            }
            HStack (spacing: 16){
                Text("\(Int(green))")
                    .frame(width: 50, height: 40)
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.primaryText)
                    )
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.primaryText)
                
                Slider(value: $green, in: 0...255, step: 1)
                    .accentColor(.green)
                Text("G")
                    .font(.title2)
                    .foregroundColor(Color.primaryText)
            }
            HStack (spacing: 16){
                Text("\(Int(blue))")
                    .frame(width: 50, height: 40)
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.primaryText)
                    )
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.primaryText)
                
                Slider(value: $blue, in: 0...255, step: 1)
                    .accentColor(.blue)
                Text("B")
                    .font(.title2)
                    .foregroundColor(Color.primaryText)
            }
            HStack (spacing: 48){
                CustomButton(title: "Reset", padding: 12, backgroundColor: Color.primaryBackground, textColor: Color.primaryText)
                CustomButton(title: "Generate", padding: 12, destination: AnyView(MultipleResultsView()))
            }
            .padding(.top, 32)
        }

    }
}

#Preview {
    ColorPicker()
}
