//
//  PhysicalCard.swift
//  santander
//
//  Created by Elias Dinar on 23/5/26.
//

import SwiftUI

// According to Gemini
// "The international standard (ISO/IEC 7810 ID-1)..."
let RATIO_CARD: Double = 85.60 / 53.98

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
        HStack {
            VStack (alignment: .leading) {
                HStack {
                    Image("santander")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.santanderWhite)
                        .rotationEffect(.degrees(90))
                    Spacer()
                    Text(type.label)
                        .foregroundColor(.santanderWhite)
                        .rotationEffect(.degrees(90))
                        .font(.custom("Lato-Bold", size: 15))
                }
                Spacer()
                ZStack {
                    //Text("Hola")
                }
            }
            .padding([.leading, .vertical], nil)
            .padding([.trailing], -7)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            ZStack(alignment: .bottomTrailing) {
                Image("mastercard")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            .padding()
        }
        .aspectRatio(RATIO_CARD, contentMode: .fit)
        .containerRelativeFrame(.horizontal) { length, _ in
            length * 0.95
        }
        .background(type.backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    VStack {
        PhysicalCard(.credit)
        PhysicalCard(.debit)
        PhysicalCard(.prepaid)
    }
    .frame(maxWidth: .infinity)
}
