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

* [x] Create Payment
* [x] Checkout

## TODO At some point
* [ ] Orders
