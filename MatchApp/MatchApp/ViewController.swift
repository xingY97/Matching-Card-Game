//
//  ViewController.swift
//  MatchApp
//
//  Created by X Y on 3/23/21.
//

import UIKit

class ViewController: UIViewController {

    
    let model = CardModel()
    var cardsArray = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardsArray = model.getCards()
    }


}

