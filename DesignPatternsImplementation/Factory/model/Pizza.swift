//
//  Pizza.swift
//  DesignPatternsImplementation
//
//  Created by ghadeer.elmahdy on 14/10/2021.
//

import Foundation
enum Toppings {
    case cheese
    case beef
    case chickenCrispy
    case fish
    case vegtables
}
enum Sause {
    case katchep
    case barbikuo
    case ranch
}
enum PizzaTypes {
    case cheese
    case chikenBarbique
    case chikenRanch
    case shawrmaBeef
}
protocol Pizza {
    var name: PizzaTypes { get }
    var toppings: [Toppings] { get }
    var sause: [Sause] { get }
    func prepare ()
    func bake ()
    func cut ()
    func box ()
}
extension Pizza {
    func prepare () {
        print("بنعجن الاول و بعدين نفرد و بعدين نحط الحاجات فوق")
    }
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


