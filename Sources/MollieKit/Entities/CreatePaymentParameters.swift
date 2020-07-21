//
//  PaymentRequestData.swift
//  App
//
//  Created by Biut Raj Thapa on 18/07/2020.
//

import Vapor

struct CreatePaymentParameters: Content {
    let amount: PaymentParametersAmount
    let description: String
    let redirectUrl: String
    let method: [PaymentMethodType]
    let metadata: [String : [String : String]]?
}

struct PaymentParametersAmount: Content {
    let currency: CurrencyType
    let value: String
}








