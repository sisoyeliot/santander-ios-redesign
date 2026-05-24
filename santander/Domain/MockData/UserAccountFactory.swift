//
//  UserAccountFactory.swift
//  santander
//
//  Created by Elias Dinar on 24/5/26.
//

import Foundation

struct UserAccountFactory {
    static func fetchUserAccount() -> UserAccount {
        let bankAccounts = BankAccountFactory.generateBankAccounts()
        let creditCards = CreditCardFactory.generateCreditCards()
        
        let totalBalance = Double(bankAccounts.reduce(0) { $0 + $1.balance }) / 100.0
        
        return UserAccount(totalBalance: totalBalance, bankAccounts: bankAccounts, creditCards: creditCards)
    }
}
