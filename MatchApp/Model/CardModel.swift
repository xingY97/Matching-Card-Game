//
//  CardModel.swift
//  MatchApp
//
//  Created by X Y on 3/23/21.
//

import Foundation

class CardModel {
    
    //This method generates the cards, will requires a return method
    func getCards() -> [Card] {
        
        // Declare an empty array to store all the cards
        var generatedCards = [Card]()
        
        //randomly generate 8 pairs of cards
        for _ in 1...8 {
            
            // Generate a random number
            let randomNumber = Int.random(in: 1...13)
            
            //Create two new card objects
            let cardOne = Card()
            let cardTwo = Card()
            
            //Set their image names
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            
            //Add them to the array
            generatedCards += [cardOne, cardTwo]
            
            print(randomNumber)
        }
        
        //randomize the cards within the array
        generatedCards.shuffle()
        
        //Return the array
        return generatedCards
    }
    
}
