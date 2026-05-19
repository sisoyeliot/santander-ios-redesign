//
//  Item.swift
//  santander
//
//  Created by Elias Dinar on 19/5/26.
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
