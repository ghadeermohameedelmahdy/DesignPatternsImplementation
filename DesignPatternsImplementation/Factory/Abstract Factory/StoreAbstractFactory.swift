//
//  StoreAbstractFactory.swift
//  DesignPatternsImplementation
//
//  Created by ghadeer.elmahdy on 17/10/2021.
//

import Foundation
protocol PizzaStoreAbstractFactoryProtocol {
    func preparePizza(type: PizzaTypes) -> AbstractFactoryPizza
    func createPizza(type: PizzaTypes) -> AbstractFactoryPizza // abstract factory method
}
extension PizzaStoreAbstractFactoryProtocol {
    func preparePizza(type: PizzaTypes) -> AbstractFactoryPizza {
        var pizza = createPizza(type: type)
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }
}
class NYPizzaStoreAbstractFactory: PizzaStoreAbstractFactoryProtocol {
    func createPizza(type: PizzaTypes) -> AbstractFactoryPizza {
        let factory = NYPizzaIngredientsFactory()
        switch type {
        case .chikenBarbique:
            return ChikenBarbiqueAFPizza(factory)
        case .cheese:
            return CheeseAFPizza(factory)
        case .chikenRanch:
            return CheeseAFPizza(factory)
        case .shawrmaBeef:
            return CheeseAFPizza(factory)
        }
    }
}
class ChicagoStoreAbstractFactory: PizzaStoreAbstractFactoryProtocol {
    func createPizza(type: PizzaTypes) -> AbstractFactoryPizza {
        let factory = NYPizzaIngredientsFactory()
        switch type {
        case .chikenBarbique:
            return ChikenBarbiqueAFPizza(factory)
        case .cheese:
            return CheeseAFPizza(factory)
        case .chikenRanch:
            return CheeseAFPizza(factory)
        case .shawrmaBeef:
            return CheeseAFPizza(factory)
        }
    }
}
