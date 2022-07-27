//
//  Funds.swift
//  HomeWorkFor2.4Lession(Wallet)
//
//  Created by Федор Еронин on 26.07.2022.
//

import Foundation

protocol Funds {
    var typeOffunds: TypeOfFunds { get }
    var image: String { get }
    var name: String { get }
    var currency: Currency { get }
    var price: Double { get }
}

struct Stock: Funds {
    var typeOffunds = TypeOfFunds.stock
    var image: String
    var name: String
    var currency: Currency
    var price: Double
    var issuer: String
}

struct Bound: Funds {
    var typeOffunds = TypeOfFunds.bound
    var image: String
    var name: String
    var currency: Currency
    var price: Double
    var issuer: String
    var yield: Double
}

struct Cash: Funds {
    var typeOffunds = TypeOfFunds.cash
    var image: String
    var name: String
    var currency: Currency
    var price: Double = 1.0
    var country: String
}

struct cryptoCurrency: Funds {
    var typeOffunds = TypeOfFunds.cryptoCurrency
    var image: String
    var name: String
    var currency: Currency
    var price: Double
    var ticker: String
}

struct Eft: Funds {
    var typeOffunds = TypeOfFunds.etf
    var image: String
    var name: String
    var currency: Currency
    var price: Double
}

struct Metall: Funds {
    var typeOffunds = TypeOfFunds.metall
    var typeOfMetal: TypeOfMetall
    var image: String
    var name: String {
        switch typeOfMetal {
        case .gold:
            return "Золото"
        case .silver:
            return "Серебро"
        case .palladium:
            return "Палладий"
        }
    }
    var currency: Currency
    var price: Double
}

enum TypeOfFunds {
    case stock
    case bound
    case cash
    case cryptoCurrency
    case etf
    case metall
}

enum Currency {
    case usd
    case eur
    case rur
    case cny
    case jpy
}

enum TypeOfMetall {
    case gold
    case silver
    case palladium
}
