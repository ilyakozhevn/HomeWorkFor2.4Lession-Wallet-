//
//  Converter.swift
//  HomeWorkFor2.4Lession(Wallet)
//
//  Created by Федор Еронин on 26.07.2022.
//

import Foundation


class Converter {
    static func getPrice(of fund: Funds, in currency: Currency) -> Double {
        func getExchangeRate(of currency: Currency) -> Double {
            switch currency {
            case .usd:
                return 1
            case .eur:
                return 0.99
            case .rur:
                return 60.13
            case .cny:
                return 6.76
            case .jpy:
                return 136.66
            }
        }
        let rateOfFunds = getExchangeRate(of: fund.currency)
        let rateOfOutputCurrency = getExchangeRate(of: currency)
        return fund.price / rateOfFunds * rateOfOutputCurrency
    }
}
