//
//  ViewController.swift
//  project
//
//  Created by work on 08.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var beerFirst: UILabel!
    @IBOutlet weak var beerSecond: UILabel!
    @IBOutlet weak var beerThrid: UILabel!
    
    @IBOutlet weak var beerThridCount: UILabel!
    @IBOutlet weak var beerSecondCount: UILabel!
    @IBOutlet weak var beerFirstCount: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var firstPlus: UIButton!
    @IBOutlet weak var secondPlus: UIButton!
    @IBOutlet weak var thridPlus: UIButton!
    
    @IBOutlet weak var firstMinus: UIButton!
    @IBOutlet weak var secondMinus: UIButton!
    @IBOutlet weak var thridMinus: UIButton!
    
    @IBOutlet weak var sellButton: UIButton!
    @IBOutlet weak var startDay: UIButton!
    
    @IBAction func startDayTouch(_ sender: Any) {
 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstBeer = Manager.shared.createBeerFirst()
        let secondBeer = Manager.shared.createBeerSecond()
        let thridBeer = Manager.shared.createBeerThrid()
        
        
        beerFirst.text = "\(firstBeer.name)"
        beerSecond.text = "\(secondBeer.name)"
        beerThrid.text = "\(thridBeer.name)"
    }
    
    @IBAction func firstPlusTouch(_ sender: Any) {
            switch beerFirstCount.text {
            case "0" : beerFirstCount.text = "1"
            case "1" : beerFirstCount.text = "2"
            case "2" : beerFirstCount.text = "3"
            default : beerFirstCount.text = "3"
            }
        }
    
    @IBAction func secondPlusTouch(_ sender: Any) {
        switch beerSecondCount.text {
        case "0" : beerSecondCount.text = "1"
        case "1" : beerSecondCount.text = "2"
        case "2" : beerSecondCount.text = "3"
        default : beerSecondCount.text = "3"
        }
    }
    
    @IBAction func thridPlusTouch(_ sender: Any) {
        switch beerThridCount.text {
        case "0" : beerThridCount.text = "1"
        case "1" : beerThridCount.text = "2"
        case "2" : beerThridCount.text = "3"
        default : beerThridCount.text = "3"
        }
    }
    
    @IBAction func firstMinusTouch(_ sender: Any) {
        switch beerFirstCount.text {
        case "3" : beerFirstCount.text = "2"
        case "2" : beerFirstCount.text = "1"
        case "1" : beerFirstCount.text = "0"
        default : beerFirstCount.text = "0"
        }
    }
    
    @IBAction func secondMinusTouch(_ sender: Any) {
        switch beerSecondCount.text {
        case "3" : beerSecondCount.text = "2"
        case "2" : beerSecondCount.text = "1"
        case "1" : beerSecondCount.text = "0"
        default : beerSecondCount.text = "0"
        }
    }
    
    @IBAction func thridMinusTouch(_ sender: Any) {
        switch beerThridCount.text {
        case "3" : beerThridCount.text = "2"
        case "2" : beerThridCount.text = "1"
        case "1" : beerThridCount.text = "0"
        default : beerThridCount.text = "0"
        }
    }
    
    @IBAction func sellButtonTouch(_ sender: Any) {
        price.text = "\(beerFirstCount.text!) * \(Manager.shared.getPrice(name: beerFirst.text!))"
        beerFirstCount.text = "0"
        beerSecondCount.text = "0"
        beerThridCount.text = "0"
    }
}
    

