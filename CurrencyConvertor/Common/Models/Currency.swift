//
//
//  CurrencyList.swift
//  CurrencyConvertor
//
//  Created by Sujith Antony on 26/10/2020.
//  Copyright © 2020 Sujith Antony. All rights reserved.
//
import UIKit
import Alamofire

typealias CurrenciesListCompletionHandler = (_ response: CurrenciesList) -> Void
typealias CurrenciesRateCompletionHandler = (_ response: CurrencyRate) -> Void

struct Currency: Codable {
    var name: String?
    var symbol:String?
}

struct CurrenciesList: Codable {
    var currencies:[String:String]    
    enum CodingKeys: String, CodingKey {
        case currencies = "currencies"
    }
    
    
}

enum CurrencyType{
    case source
    case destination
}

extension Currency: CurrencyDetailsDescriptionItemInterface {
    var currencyName: String? {
        return name
    }
    var currencySymbol: String?{
        return symbol
    }
}

struct CurrencyRate:Codable{
    var source:String?
    var rates:[String:Double]
    
    enum CodingKeys: String, CodingKey {
        case source = "source"
        case rates = "quotes"
    }
}

