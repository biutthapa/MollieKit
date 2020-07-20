//
//  CreatePaymentResponse.swift
//  App
//
//  Created by Biut Raj Thapa on 18/07/2020.
//

import Vapor

// MARK: - CreatePaymentResponse
struct CreatePaymentResponse: Content {
    let resource, id, mode: String
    let createdAt: Date
    let amount: CreatePaymentResponseAmount
    let description: String
    let method: String?
    let metadata: [String: String]?
    let status: String
    let isCancelable: Bool
    let expiresAt: Date
    let profileId, sequenceType: String
    let redirectUrl: String
    let _links: CreatePaymentResponseLinks
}

// MARK: - Amount
struct CreatePaymentResponseAmount: Content {
    let value, currency: String
}

// MARK: - Links
struct CreatePaymentResponseLinks: Content {
    let linkSelf: CreatePaymentResponseCheckout?
    let checkout, documentation: CreatePaymentResponseCheckout
}

// MARK: - Checkout
struct CreatePaymentResponseCheckout: Content {
    let href: String
    let type: String
}

