*API Version: 2 (Latest)*
# MollieKit


### Mollie API client for Server-Side Swift. 

## Installation
To start using MollieKit, in your `Package.swift`, add the following

~~~~swift
.package(url: "https://github.com/biutthapa/MollieKit.git", from: "0.0.1")
~~~~

## Using the API
Create the `Payment`

~~~~swift
let mollie = Mollie(apiKey: "your_API_key")
let payment = mollie.createPayment(...)
~~~~

## Whats Implemented

### Payments
* [x] Create Payment
* [x] Checkout

## TODO

### Payments
* [ ] Get Payment
* [ ] Update Payment
* [ ] Cancel Payment
* [ ] List Payments
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
### Methods
* [ ] List Payment Methods
* [ ] List All Payment Methods
* [ ] Get Payment Method
---
### Chargebacks
* [ ] Get Chargeback
* [ ] List Chargebacks
---
### Captures
* [ ] Get Capture
* [ ] List Captures
---
