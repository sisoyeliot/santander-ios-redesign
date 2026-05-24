//
//  BankAccountFactory.swift
//  santander
//
//  Created by Elias Dinar on 24/5/26.
//

import Foundation

struct BankAccountFactory {
    static func createBankAccount(iban: String, type: BankAccountType, nickname: String, balance: Int) -> BankAccount {
        return BankAccount(iban: iban, type: type, nickname: nickname, balance: balance)
    }
    
    static func generateBankAccounts() -> [BankAccount] {
        return [
            createBankAccount(
                iban: "ES12 1234 1234 12 0123456789",
                type: .santander,
                nickname: "Cuenta Corriente",
                balance: 12521_64
            ),
            createBankAccount(
                iban: "ES98 7654 3210 98 7654321098",
                type: .savings,
                nickname: "Cuenta Ahorro",
                balance: 3450_00
            )
        ]
    }
}
