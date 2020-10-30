//
//  CurrencyList.swift
//  CurrencyConvertor
//
//  Created by Sujith Antony on 26/10/2020.
//  Copyright © 2020 Sujith Antony. All rights reserved.
//

import UIKit

class ThemeInitializer: Initializable {

    func performInitialization() {
        UINavigationBar.appearance(whenContainedInInstancesOf: [CurrencyConvertorNavigationController.self]).tintColor = .white
        UINavigationBar.appearance(whenContainedInInstancesOf: [CurrencyConvertorNavigationController.self]).barTintColor = UIColor.gray
        UINavigationBar.appearance(whenContainedInInstancesOf: [CurrencyConvertorNavigationController.self]).titleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
    }

}
