//
//  CurrencyList.swift
//  CurrencyConvertor
//
//  Created by Sujith Antony on 26/10/2020.
//  Copyright © 2020 Sujith Antony. All rights reserved.
//

import UIKit

struct Section<T> {
    var header: String?
    var footer: String?
    var items: [T] = []

    init(items: [T]) {
        self.items = items
    }
}
