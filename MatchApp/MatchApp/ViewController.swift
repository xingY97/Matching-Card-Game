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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath)
        
        //configure it
        
        //Return it
        return cell
        
    
}

}
