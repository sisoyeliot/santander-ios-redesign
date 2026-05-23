//
//  PhysicalCard.swift
//  santander
//
//  Created by Elias Dinar on 23/5/26.
//

import SwiftUI

enum CardType {
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

struct PhysicalCard: View {
    let type: CardType
    
    init(_ type: CardType) {
        self.type = type
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PhysicalCard(.credit)
    PhysicalCard(.debit)
    PhysicalCard(.prepaid)
}
