//
//  CurrencyList.swift
//  CurrencyConvertor
//
//  Created by Sujith Antony on 26/10/2020.
//  Copyright © 2020 Sujith Antony. All rights reserved.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>(ofType type: T.Type, withReuseIdentifier identifier: String? = nil, for indexPath: IndexPath) -> T {
        let identifier = identifier ?? String(describing: type)
        return dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! T
    }
}
