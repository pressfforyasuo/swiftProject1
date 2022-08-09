//
//  Beer.swift
//  project
//
//  Created by work on 08.08.2022.
//

import Foundation

class Beer {
    var name: String
    var price: Double
    var count = 100
    var totalSum = 0.0
    
    init(name: String, price: Double){
        self.name = name
        self.price = price
    }
}
