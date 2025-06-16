//
//  FixerSelector.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/16/25.
//
import SwiftUI

struct FixerSelector: View {
    @State private var selectedMode: Mode = .normal
    var body: some View {
        HStack {
            ForEach(Mode.allCases, id: \.self) { mode in
                CustomButton(
                    subtitle: mode.displayName,
                    padding: 8,
                    backgroundColor: selectedMode == mode ? Color.buttonBackground : Color.primaryBackground,
                    textColor: selectedMode == mode ? Color.white : Color.primaryText,
                    cornerRadius: 16
                )
                {
                    selectedMode = mode
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 48)
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.primaryText),
            alignment: .top
        )
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
    FixerSelector()
}


