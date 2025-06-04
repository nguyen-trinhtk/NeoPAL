//
//  Item.swift
//  NeoPAL
//
//  Created by Nguyen Trinh on 6/4/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
