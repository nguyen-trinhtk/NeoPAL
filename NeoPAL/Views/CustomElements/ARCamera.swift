//
//  ARCamera.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/17/25.
//

import SwiftUI
import RealityKit
import ARKit

struct ARCamera: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal, .vertical]
        arView.session.run(config)
        return arView
    }

    func updateUIView(_ uiView: ARView, context: Context) {}
}
