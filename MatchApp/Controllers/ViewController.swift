//
//  ViewController.swift
//  MatchApp
//
//  Created by X Y on 3/23/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    

    @IBOutlet weak var collectionView: UICollectionView!
    
    let model = CardModel()
    var cardsArray = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardsArray = model.getCards()
        
        // set the viewController as the datasource and delegate of the collectionview
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }

    // MARK: - collectionView Delegate Methods

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        //return number of cards
        return cardsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //what should the cell show for a specific cell
        //Get a cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCollectionViewCell
        
        //Get the card from the card array
        let card = cardsArray[indexPath.row]
        
        //configuring the cell
        cell.configureCell(card: card)
        
        //Return it
        return cell
        
}
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        //Get a refrence to the cell that was tapped
        let cell = collectionView.cellForItem(at: indexPath) as? CardCollectionViewCell
        
        //Flip the card up
        cell?.flipUp()
        
    }

}
