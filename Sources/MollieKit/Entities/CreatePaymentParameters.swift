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
    let metadata: CreatePaymentMetadata
}

struct PaymentParametersAmount: Content {
    let currency: CurrencyType
    let value: String
}

struct CreatePaymentMetadata: Content {
    let customerEmail: String
    let customerPhoneNumber: String
    let customerFirstName: String
    let customerLastName: String
    let customerAddressLine1: String
    let customerAddressLine2: String
    let customerPostalCode: String
    let CustomerCity: String
    let CustomerCountry: String
}






