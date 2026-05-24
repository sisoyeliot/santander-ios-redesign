//
//  CreditCard.swift
//  santander
//
//  Created by Elias Dinar on 24/5/26.
//

import Foundation
import SwiftUI

enum CreditCardType {
    case credit, debit, prepaid
    
    var backgroundColor: Color {
        switch self {
        case .credit: .santanderBlack
        case .debit: .santanderRed
        case .prepaid: .santanderLakeStream
        }
    }
    
    var label: String {
        switch self {
        case .credit: "Crédito"
        case .debit: "Débito"
        case .prepaid: "Prepago"
        }
    }
}

struct CreditCard: Identifiable {
    let id = UUID()
    let type: CreditCardType
    let number: String
    let linkedAccountIBAN: String
}
