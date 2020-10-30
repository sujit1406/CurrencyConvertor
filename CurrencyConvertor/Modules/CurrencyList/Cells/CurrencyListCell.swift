//
//  PokemonDetailsDescriptionTableViewCell.swift
//  Pokedex
//
//  Created by Filip Beć on 28/04/2017.
//  Copyright © 2017 Filip Beć. All rights reserved.
//

import UIKit

class CurrencyListCell: UITableViewCell {

    @IBOutlet private weak var symbolLabel: UILabel!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet weak var selectButton: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with item: CurrencyDetailsDescriptionItemInterface) {
        nameLabel.text = item.currencyName
        symbolLabel.text = item.currencySymbol
    }

}
