//
//  BankAccount.swift
//  santander
//
//  Created by Elias Dinar on 24/5/26.
//

import Foundation

enum BankAccountType {
    case savings, santander, online
}

struct BankAccount: Identifiable {
    let id = UUID()
    let iban: String
    let type: BankAccountType
    let nickname: String
    let balance: Int
}
