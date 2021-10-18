//
//  PizzaStoreSF.swift
//  DesignPatternsImplementation
//
//  Created by ghadeer.elmahdy on 14/10/2021.
//

import Foundation
// this example for simple factory
/**
 The Simple Factory isn’t actually a Design Pattern; it’s more of a programming idiom. But it is commonly used, so we’ll give it a Head First Pattern Honorable Mention
 Just because Simple Factory isn’t a REAL pattern
 This example problem :
 But you’d like a little more quality control...
 So you test-marketed the SimpleFactory idea, and what you found was that the franchises were using your factory to create pizzas, but starting to employ their own home-grown procedures for the rest of the process: they’d bake things a little differently, they’d forget to cut the pizza and they’d use third- party boxes.
 */
class PizzaStoreSimpleFactory {
    let pizzaFactory: PizzaFactory
    init(factory: PizzaFactory) {
        pizzaFactory = factory
    }
    func preparePizza(type: PizzaTypes) -> Pizza {
        let pizza = pizzaFactory.createPizza(type: type)
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }
}
/** we can also create pizza with staic method (static factory), but what if you want to change?
 you can’t subclass and change the behavior of the create method
 */
class PizzaFactory {
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
class EgyptionPizzaFactory: PizzaFactory {
    override func createPizza(type: PizzaTypes) -> Pizza {
        switch type {
        case .chikenBarbique:
            return ChikenBarbiquePizza()
        case .cheese:
            return CheesePizzaEgyptionStyle()
        case .chikenRanch:
            return CheesePizza()
        case .shawrmaBeef:
            return CheesePizza()
        }
    }
}
