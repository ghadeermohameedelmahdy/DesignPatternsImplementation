//
//  IngredientsTypes.swift
//  DesignPatternsImplementation
//
//  Created by ghadeer.elmahdy on 17/10/2021.
//

import Foundation
/**
 each factory produce different implementation for the family of products
 */
protocol Ingredient {
}
protocol Cheese: Ingredient {
    func prepareCheese ()
    func createCheese ()
}
class MozzarellaCheese: Cheese {
    init() {
        prepareCheese()
    }
    func createCheese() {
        print("creating cheese .. mozzarella")
    }
    func prepareCheese() {
        createCheese()
        print("cutting cheese ..")
        print("frozing cheese ..")
    }
}
class ReccotaCheese: Cheese {
    init() {
        prepareCheese()
    }
    func createCheese() {
        print("creating cheese .. reccota")
    }
    func prepareCheese() {
        createCheese()
        print("cutting cheese ..")
        print("frozing cheese ..")
    }
}
protocol Sauce: Ingredient {
    func prepareSauce ()
    func createSauce ()
}
class KatchabSauce: Sauce {
    init() {
        prepareSauce()
    }
    func createSauce() {
        print("creating cheese .. katchab")
    }
    func prepareSauce() {
        createSauce()
        print("cooling katchab ..")
    }
}
class BarbekuSauce: Sauce {
    init() {
        prepareSauce()
    }
    func createSauce() {
        print("creating cheese .. Barbeku")
    }
    func prepareSauce() {
        createSauce()
        print("cooling Barbeku ..")
    }
}
