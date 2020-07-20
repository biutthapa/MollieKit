//
//  MollieEnums.swift
//  App
//
//  Created by Biut Raj Thapa on 18/07/2020.
//

import Vapor

public enum CurrencyType: String, Content {
    case EUR
}

enum PaymentMethodType: String, Content {
    case applepay
    case bancontact
    case creditcard
    case directdebit
    case ideal
    case inghomepay
    case paypal
}
