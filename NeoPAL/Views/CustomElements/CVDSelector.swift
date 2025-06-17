//
//  FixerSelector.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//
import SwiftUI

struct CVDSelector: View {
    @State private var selectedMode: Mode = .normal
    var split: Bool = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        if (split == false) {
            HStack {
                ForEach(Mode.allCases, id: \.self) { mode in
                    CustomButton(
                        subtitle: mode.displayName,
                        padding: 8,
                        backgroundColor: selectedMode == mode ? Color.buttonBackground : Color.primaryBackground,
                        textColor: selectedMode == mode ? Color.white : Color.primaryText,
                        cornerRadius: 16
                    ) {
                        selectedMode = mode
                    }
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 48)
            .background(Color.primaryBackground)
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.primaryText),
                alignment: .top
            )
        } else {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(Mode.allCases, id: \.self) { mode in
                    CustomButton(
                        subtitle: mode.displayName,
                        padding: 12,
                        width: 100,
                        backgroundColor: selectedMode == mode ? Color.buttonBackground : Color.primaryBackground,
                        textColor: selectedMode == mode ? Color.white : Color.primaryText,
                        cornerRadius: 24
                    ) {
                        selectedMode = mode
                    }
                }
            }
            .padding(.horizontal, 48)
            .background(Color.primaryBackground)
        }
    }
}

enum Mode: CaseIterable {
    case normal, protan, deuteran, tritan

    var displayName: String {
        switch self {
        case .normal: return "Normal"
        case .protan: return "Protan"
        case .deuteran: return "Deuteran"
        case .tritan: return "Tritan"
        }
    }
}

#Preview {
    CVDSelector(split: true)
}

