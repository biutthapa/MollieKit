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

public final class CreatePaymentMetadata: Content {
    let customerEmail: String
    let customerPhoneNumber: String
    let customerFirstName: String
    let customerLastName: String
    let customerAddressLine1: String
    let customerAddressLine2: String
    let customerPostalCode: String
    let customerCity: String
    let customerCountry: String
    
    init(email: String,
         phone: String,
         f_name: String,
         l_name: String,
         addressLine1: String,
         addressLine2: String,
         postalCode: String,
         city: String,
         country: String) {
        self.customerEmail = email
        self.customerPhoneNumber = phone
        self.customerFirstName = f_name
        self.customerLastName = l_name
        self.customerAddressLine1 = addressLine1
        self.customerAddressLine2 = addressLine2
        self.customerPostalCode = postalCode
        self.customerCity = city
        self.customerCountry = country
    }
}






