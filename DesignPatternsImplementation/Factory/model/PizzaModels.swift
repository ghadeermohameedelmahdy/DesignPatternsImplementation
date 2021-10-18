//
//  PizzaModels.swift
//  DesignPatternsImplementation
//
//  Created by ghadeer.elmahdy on 14/10/2021.
//

import Foundation
struct CheesePizza: Pizza {
    var name: PizzaTypes = .cheese
    var toppings: [Toppings] = [.cheese]
    var sause: [Sause] = [.katchep]
}
struct CheesePizzaEgyptionStyle: Pizza {
    var name: PizzaTypes = .cheese
    var toppings: [Toppings] = [.cheese, .vegtables]
    var sause: [Sause] = [.katchep, .barbikuo]
    func cut () {
        print("cut into square")
    }
}
struct ChikenBarbiquePizza: Pizza {
    var name: PizzaTypes = .chikenBarbique
    var toppings: [Toppings] = [.chickenCrispy]
    var sause: [Sause] = [.barbikuo]
}
