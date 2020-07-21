//
//  Mollie.swift
//  App
//
//  Created by Biut Raj Thapa on 17/07/2020.
//

import Vapor

public final class Mollie {
    public let apiKey: String
    
    public init(apiKey: String) {
        self.apiKey = apiKey
    }

    public func createPayment(_ req: Request,
                              currency: CurrencyType,
                              amountValue: Double,
                              description: String,
                              redirectUrl: String,
                              metadata: [[String: String]]?) throws -> Future<Response> {
        
        let paymentParameters = CreatePaymentParameters(amount: PaymentParametersAmount(currency: currency, value: amountValueDoubleToString(amount: amountValue)),
                                                        description: description,
                                                        redirectUrl: redirectUrl,
                                                        method: [.ideal, .paypal, .applepay],
                                                        metadata: metadata)
        
        req.http.contentType = .json
        return try req.client().post("https://api.mollie.com/v2/payments") { req in
            req.http.headers.bearerAuthorization = BearerAuthorization(token: apiKey)
            try req.content.encode(paymentParameters)
            print(req.content)
        }.flatMap(to: Response.self) { res in
            res.http.contentType = .json
            return try res.content.decode(CreatePaymentResponse.self).map(to: Response.self) { res in
                return req.redirect(to: res._links.checkout.href)
            }
        }
    }
    
    func amountValueDoubleToString(amount: Double) -> String {
        return String(format: "%.2f", amount)
    }
}


