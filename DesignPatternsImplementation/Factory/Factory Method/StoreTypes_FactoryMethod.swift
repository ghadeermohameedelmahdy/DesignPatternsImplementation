//
//  StoreTypes_FactoryMethod.swift
//  DesignPatternsImplementation
//
//  Created by ghadeer.elmahdy on 14/10/2021.
//

import Foundation
class NYPizzaStoreFMethod: PizzaStoreFactoryMethodProtocol {
    func createPizza(type: PizzaTypes) -> Pizza {
        switch type {
        case .chikenBarbique:
            return ChikenBarbiquePizza()
        case .cheese:
            return CheesePizza()
        case .chikenRanch:
            return CheesePizza()
        case .shawrmaBeef:
            return CheesePizza()
        }
    }
}
class EgyptionPizzaStoreFMethod: PizzaStoreFactoryMethodProtocol {
    func createPizza(type: PizzaTypes) -> Pizza {
        switch type {
        case .chikenBarbique:
            return ChikenBarbiquePizza()
        case .cheese:
            return CheesePizzaEgyptionStyle()
        case .chikenRanch:
            return CheesePizzaEgyptionStyle()
        case .shawrmaBeef:
            return CheesePizzaEgyptionStyle()
        }
    }
}
