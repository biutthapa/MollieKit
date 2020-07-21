*API Version: 2 (Latest)*
# MollieKit


### Mollie API client for Server-Side Swift. 

## Installation
To start using MollieKit, in your `Package.swift`, add the following

~~~~swift
.package(url: "https://github.com/biutthapa/MollieKit.git", from: "0.0.1")
~~~~

## Using the API

### Payments
Create the `Payment`

~~~~swift
let mollie = Mollie(apiKey: "your_API_key")
let payment = mollie.createPayment(...)
~~~~

## Whats Implemented

### Payments
* [x] Create Payment
* [x] Checkout

## Coming Soon

### Payments
* [ ] Get Payment
* [ ] Update Payment
* [ ] Cancel Payment
* [ ] List Payments
* [ ] Request Apple Pay Payment Session

---
### Orders
* [ ] Create Order
* [ ] Get Order
* [ ] List Orders
* [ ] Update Order
* [ ] Cancel Order
* [ ] Update Order Line
* [ ] Cancel Order Lines
* [ ] Create Order Payment
* [ ] Create Order Refund
* [ ] List Order Refunds
---
### Refunds
* [ ] Create Refund
* [ ] Get Refund
* [ ] Cancel Refund
* [ ] List Refunds
---
### Shipments
* [ ] Create Shipment
* [ ] Get Shipment
* [ ] List Shipments
* [ ] Update Shipment
---
### Subscriptions
* [ ] Create Subscription
* [ ] Get Subscription
* [ ] Cancel Subscription
* [ ] List Subscriptions
* [ ] List All Subscriptions
* [ ] List Subscription Payments
* [ ] Update Subscription
---
### Customers
* [ ] Create Customer
* [ ] Get Customer
* [ ] Update Customer
* [ ] Delete Customer
* [ ] List Customers
* [ ] Create Customer Payment
* [ ] List Customer Payment
---
### Chargebacks
* [ ] Get Chargeback
* [ ] List Chargebacks
---
### Mandates
* [ ] Create Mandate
* [ ] Get Mandate
* [ ] Revoke Mandate
* [ ] List Mandates
---
### Invoices
* [ ] Get Invoices
* [ ] List Invoices
---
