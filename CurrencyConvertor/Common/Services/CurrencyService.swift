//
//  CurrencyService.swift
//  CurrencyConvertor
//
//  Created by Sujith Antony on 26/10/2020.
//  Copyright © 2020 Sujith Antony. All rights reserved.
//

import Foundation
import Alamofire

class CurrencyService: NSObject {
    
    func loadCurrencyList(completion:@escaping CurrenciesListCompletionHandler){
        AF.request(CCService.CurrencyLayerService.list).validate().responseJSON { response in
            switch (response.result) {
            case .success( _):
                do {
                    let currencies = try JSONDecoder().decode(CurrenciesList.self, from: response.data!)
                    completion(currencies)
                    
                } catch let error as NSError {
                    print("Failed to load: \(error.localizedDescription)")
                }
            case .failure(let error):
                print("Request error: \(error.localizedDescription)")
            }
        }
    }
    
    func loadLiveRates(source:String?, completion:@escaping CurrenciesRateCompletionHandler){
        AF.request(CCService.CurrencyLayerService.live(source: source)).validate().responseJSON { response in
            switch (response.result) {
            case .success( _):
                do {
                    let currencies = try JSONDecoder().decode(CurrencyRate.self, from: response.data!)
                    completion(currencies)
                    
                } catch let error as NSError {
                    print("Failed to load: \(error.localizedDescription)")
                }
            case .failure(let error):
                print("Request error: \(error.localizedDescription)")
            }
        }
    }
}
