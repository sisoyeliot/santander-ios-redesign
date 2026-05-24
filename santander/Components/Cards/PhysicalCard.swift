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

struct PhysicalCard: View {
    let type: CreditCardType
    let scale: CGFloat
    
    init(_ type: CreditCardType, scale: CGFloat = 1.0) {
        self.type = type
        self.scale = scale
    }
    
    var body: some View {
        HStack {
            HStack {
                Image("santander")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60 * scale, height: 60 * scale)
                    .foregroundColor(.santanderWhite)
                    .rotationEffect(.degrees(90))
                Spacer()
                Text(type.label)
                    .foregroundColor(.santanderWhite)
                    .rotationEffect(.degrees(90))
                    .font(.custom("Lato-Bold", size: 15 * scale))
            }
            .padding([.leading, .vertical], 20 * scale)
            .padding([.trailing], -13)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            ZStack(alignment: .bottomTrailing) {
                Image("mastercard")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 45 * scale)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            .padding([.all], 20 * scale)
            .background(
                Image("physical.card.texture")
                    .resizable()
                    .renderingMode(.template)
                    .padding([.trailing, .vertical], -5)
                    .foregroundColor(.santanderWhite.opacity(type == .debit ? 0.4 : 0.25))
            )
        }
        .aspectRatio(RATIO_CARD, contentMode: .fit)
        .containerRelativeFrame(.horizontal) { length, _ in
            length * scale
        }
        .background(type.backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 15 * scale))
    }
}

#Preview {
    VStack {
        PhysicalCard(.credit, scale: 0.9)
        PhysicalCard(.debit, scale: 0.72)
        PhysicalCard(.prepaid, scale: 0.4)
    }
    .frame(width: 300)
}
