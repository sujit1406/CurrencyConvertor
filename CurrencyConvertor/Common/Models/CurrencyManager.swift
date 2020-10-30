//
//  CurrencyList.swift
//  CurrencyConvertor
//
//  Created by Sujith Antony on 26/10/2020.
//  Copyright © 2020 Sujith Antony. All rights reserved.
//

import Foundation

class CurrencyManager
{
    static let shared = CurrencyManager()
    var currencies:[Currency] = []
    var exchangeRates:[String:Double] = [:]
    var sourceCurrency: Currency?
    var destinationCurrency: Currency?
    var amount: Double?
    private init()
    {
        // Set up API instance
        sourceCurrency = Currency(name: "United States Dollar", symbol: "USD")
        destinationCurrency = Currency(name: "Indian Rupee", symbol: "INR")
    }
    
    func setSourceCurrency(index:Int){
        sourceCurrency = currencies[index]
        print("source currency \(String(describing: sourceCurrency?.currencySymbol)) set")
    }
    
    func setDestinationCurrency(index:Int){
        destinationCurrency = currencies[index]
        print("destination currency \(String(describing: destinationCurrency?.currencySymbol)) set")
    }
}
