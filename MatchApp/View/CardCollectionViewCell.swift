//
//  CardCollectionViewCell.swift
//  MatchApp
//
//  Created by X Y on 3/23/21.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    
    
    
    @IBOutlet weak var frontImageView: UIImageView!
    
    
    @IBOutlet weak var backImageView: UIImageView!
    
    var card:Card?
    
    func configureCell(card:Card) {
        
        //Keep track of the card this cell represents
        self.card = card
        
        //Set tge fribt unage vuew ti tge unage that represents the card
        frontImageView.image = UIImage(named: card.imageName)
        
    }
    
    
    func flipUp() {
        
        //Flip up animation
        UIView.transition(from: backImageView, to: frontImageView, duration: 0.4, options: [.showHideTransitionViews, .transitionFlipFromLeft],  completion: nil)
        
    }
    
    func flipDown() {
        
        
    }
}
