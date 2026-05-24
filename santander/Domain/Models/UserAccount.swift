//
//  UserAccount.swift
//  santander
//
//  Created by Elias Dinar on 24/5/26.
//

import Foundation

struct UserAccount: Identifiable {
    let id = UUID()
    let totalBalance: Double
    let bankAccounts: [BankAccount]
    let creditCards: [CreditCard]
}
