//
//  AccountCard.swift
//  santander
//
//  Created by Elias Dinar on 23/5/26.
//

import SwiftUI

struct AccountCard: View {
    var iban: String
    var balance: Double
    var nickname: String
    
    var body: some View {
        VStack {
            VStack {
                VStack (alignment: .leading) {
                    Image(systemName: "wallet.bifold")
                        .foregroundColor(.santanderRed)
                        .fontWeight(.regular)
                        .frame(width: 40, height: 40)
                        .background(Color(red: 246 / 255, green: 249 / 255, blue: 251 / 255))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Cuenta ...\(iban.suffix(4)) | Titular")
                                .font(.custom("Lato-Bold", size: 17))
                            Text(nickname.uppercased(with: .autoupdatingCurrent))
                                .font(.custom("Lato-Bold", size: 21))
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.santanderRed)
                            .fontWeight(.semibold)
                    }
                    
                }
                    
            }
            .padding([.all], 17)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.santanderWhite)
            
            VStack(alignment: .leading) {
                Text("Saldo disponible").font(.custom("Lato-Bold", size: 16))
                Text(balance.formatted(.currency(code: "EUR"))).font(.custom("Lato-Bold", size: 16))
            }
            .padding([.leading], 17)
            .padding([.bottom], 10)
            .padding([.top], 5)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.santanderIceBackground)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .containerRelativeFrame(.horizontal) { length, _ in
            length * 0.98
        }
        .glassEffect(.regular.interactive(), in: .rect)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color.santanderBlack.opacity(0.1618), radius: 7)
        
    }
}

#Preview {
    AccountCard(
        iban: "ES121234",
        balance: 1200.00,
        nickname: "Cuenta Corriente"
    )
}
