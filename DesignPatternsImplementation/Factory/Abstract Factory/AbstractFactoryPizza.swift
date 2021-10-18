//
//  FactoryPizza.swift
//  DesignPatternsImplementation
//
//  Created by ghadeer.elmahdy on 17/10/2021.
//

import Foundation
protocol AbstractFactoryPizza {
    var name: PizzaTypes { get }
    var toppings: [Ingredient] { get }
    var sauce: [Sauce] { get }
    mutating func prepare ()
    func bake ()
    func cut ()
    func box ()
}
extension AbstractFactoryPizza {
    func bake () {
        print("bake \(name) pizza")
    }
    func cut () {
        print("cut \(name) pizza")
    }
    func box () {
        print("box \(name) pizza")
    }
}
struct CheeseAFPizza: AbstractFactoryPizza {
    let factory: PizzaIngredientsFactory
    init( _ factory: PizzaIngredientsFactory) {
        self.factory = factory
    }
    mutating func prepare() {
        toppings.append(factory.createCheese())
        sauce.append( factory.createSause())
    }
    
    var name: PizzaTypes = .cheese
    var toppings: [Ingredient] = []
    var sauce: [Sauce] = []
}
struct ChikenBarbiqueAFPizza: AbstractFactoryPizza {
    let factory: PizzaIngredientsFactory
    init(_ factory: PizzaIngredientsFactory) {
        self.factory = factory
    }
    mutating func prepare() {
        toppings.append(factory.createCheese())
        sauce.append( factory.createSause())
    }
    var name: PizzaTypes = .chikenBarbique
    var toppings: [Ingredient] = []
    var sauce: [Sauce] = []
}
