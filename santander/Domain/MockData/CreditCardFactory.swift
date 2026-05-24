//
//  CreditCardFactory.swift
//  santander
//
//  Created by Elias Dinar on 24/5/26.
//

import Foundation

struct CreditCardFactory {
    static func createCreditCard(type: CreditCardType, number: String, linkedAccountIBAN: String) -> CreditCard {
        return CreditCard(type: type, number: number, linkedAccountIBAN: linkedAccountIBAN)
    }
    
    static func generateCreditCards() -> [CreditCard] {
        return [
            createCreditCard(
                type: .credit,
                number: "5555 5555 5555 4444",
                linkedAccountIBAN: "ES12 1234 1234 12 0123456789"
            ),
            createCreditCard(
                type: .debit,
                number: "5200 8282 8282 8210",
                linkedAccountIBAN: "ES12 1234 1234 12 0123456789"
            ),
            createCreditCard(
                type: .prepaid,
                number: "5105 1051 0510 5100",
                linkedAccountIBAN: "ES12 1234 1234 12 0123456789"
            )
        ]
    }
}
