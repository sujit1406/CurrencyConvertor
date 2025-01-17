//
//  CurrencyHomeWireframe.swift
//  CurrencyConvertor
//
//  Created by Sujith Antony on 25/10/2020.
//  Copyright (c) 2020 Sujith Antony. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class CurrencyHomeWireframe: BaseWireframe {
    
    // MARK: - Private properties -
    
    private let storyboard = UIStoryboard(name: "CurrencyHome", bundle: nil)
    var currencyListWireFrame : CurrencyListWireframe?
    // MARK: - Module setup -
    
    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: CurrencyHomeViewController.self)
        super.init(viewController: moduleViewController)
        
        let interactor = CurrencyHomeInteractor()
        let presenter = CurrencyHomePresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }
}

// MARK: - Extensions -

extension CurrencyHomeWireframe: CurrencyHomeWireframeInterface {
    
    
    func _openList(type:CurrencyType) {
        navigationController?.pushWireframe(CurrencyListWireframe(type: type))
    }
    
    
}
