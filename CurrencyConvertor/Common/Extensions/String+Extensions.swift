//
//  CurrencyList.swift
//  CurrencyConvertor
//
//  Created by Sujith Antony on 26/10/2020.
//  Copyright © 2020 Sujith Antony. All rights reserved.
//

import Foundation

extension String {
    func index(of string: String, from startPos: Index? = nil, options: CompareOptions = .literal) -> Index? {
        if let startPos = startPos {
            return range(of: string, options: options, range: startPos ..< endIndex)?.lowerBound
        } else {
            return range(of: string, options: options)?.lowerBound
        }
    }
}


extension String {
    var isNumeric : Bool {
        return NumberFormatter().number(from: self) != nil
    }
}
