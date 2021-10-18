//
//  PizzaIngredientsFactory.swift
//  DesignPatternsImplementation
//
//  Created by ghadeer.elmahdy on 17/10/2021.
//

import Foundation
/**
 The Abstract Factory Pattern provides an interface for creating families of related or
 dependent objects without specifying their concrete classes.
 We’ve certainly seen that Abstract Factory allows a client to use an abstract interface to create a set of related products without knowing (or caring) about the concrete products that are actually produced. In this way, the client is decoupled from any of the specifics of the concrete products
 */
protocol PizzaIngredientsFactory {
    func createCheese() -> Cheese
    func createSause() -> Sauce
}
class NYPizzaIngredientsFactory: PizzaIngredientsFactory {
    func createCheese() -> Cheese {
        return MozzarellaCheese()
    }
    func createSause() -> Sauce {
        return KatchabSauce()
    }
}
class ChicagoPizzaIngredientsFactory: PizzaIngredientsFactory {
    func createCheese() -> Cheese {
        return ReccotaCheese()
    }
    func createSause() -> Sauce {
        return KatchabSauce()
    }
}

