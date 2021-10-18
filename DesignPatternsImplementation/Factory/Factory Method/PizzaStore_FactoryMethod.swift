//
//  PizzaStore_Factory.swift
//  DesignPatternsImplementation
//
//  Created by ghadeer.elmahdy on 14/10/2021.
//

import Foundation
/**
 The Factory Method Pattern defines an interface for creating an object, but lets subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses.
 NOTE
The factory method is the key to encapsulating this knowledge.
 Factory method flow:
 As with every factory, the Factory Method Pattern gives us a way to encapsulate the instantiations of concrete types. Looking at the class diagram (factory method class diagram), you can see that the abstract Creator gives you an interface with a method for creating objects, also known as the “factory method.” Any other methods implemented in the abstract Creator are written to operate on products produced by the factory method. Only subclasses actually implement the factory method and create products.
 */
// high level component(includes buisness logic)
// abstract creator class
protocol PizzaStoreFactoryMethodProtocol {
    func preparePizza(type: PizzaTypes) -> Pizza
    func createPizza(type: PizzaTypes) -> Pizza // abstract factory method
}
extension PizzaStoreFactoryMethodProtocol {
    func preparePizza(type: PizzaTypes) -> Pizza {
        let pizza = createPizza(type: type)
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }
}

