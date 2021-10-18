//
//  PizzaFranchise_SimpleFactory.swift
//  DesignPatternsImplementation
//
//  Created by ghadeer.elmahdy on 14/10/2021.
//

import Foundation
func createPizzaFranchise() {
    /**
     here is the problem :
     i have a store only sells pizza , so why it should know about the factory , it shouldn't right?, also 
    so that's why factory pattern is here.
     */
    /// create with static factory
    let factory = EgyptionPizzaFactory()
    let store = PizzaStoreSimpleFactory(factory: factory)
    let pizza = store.preparePizza(type: .cheese)
    print(pizza)
    
    /// create with  factory method
    let nyStoreFM = NYPizzaStoreFMethod()
    print(nyStoreFM.preparePizza(type: .cheese))
}
