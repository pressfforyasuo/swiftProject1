//
//  Manager.swift
//  project
//
//  Created by work on 08.08.2022.
//

import Foundation

class Manager {
    static let shared = Manager()
    
    private init() {}
    
    func createBeerFirst() -> Beer {
        let firstBeer = Beer(name: "Amsterdam", price: 3.5)
        
        return firstBeer
    }
    
    func getPrice(name name: String) -> Double {
        switch name {
        case "Amsterdam" : return 3.5
        case "Ohota" : return 1.0
        case "Baltika" : return 1.6
        default : return 0.0
        }
    }
    
    func createBeerSecond() -> Beer {
        let secondBeer = Beer(name: "Baltika", price: 1.6)
        
        return secondBeer
    }
    
    func createBeerThrid() -> Beer {
        let ThridBeer = Beer(name: "Ohota", price: 1.0)
        
        return ThridBeer
    }
    
    func startDay(count count: Int) -> Int {
        if count < 100 {
            return 100
        }
        return count
    }
}
