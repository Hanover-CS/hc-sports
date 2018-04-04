//
//  FavsCollectionViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/20/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class FavsCollectionViewController: UICollectionViewController {
    
    @IBOutlet weak var addMessage: UILabel!
    
    // Does additional setup after loading the view, typically from a nib file.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets the navigation title to "Favorites".
        navigationItem.title = "Favorites"
    }

    /*:
        Notifies the view controller that its view was added to a view hierarchy.
        - parameter:
            animated: If true, the view was added to the window using an animation.
     */
    override func viewDidAppear(_ animated: Bool) {
        if favTeams.count > 0 {
            super.collectionView?.reloadData()
        }
    }
    
    // Releases any additional memory used by your view controller.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*:
        Asks your data source object for the number of sections in the collection view.
        - parameter:
            collectionView: The collection view requesting this information.
     
        - returns: The number of sections in collectionView.
    */
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    /*:
        Asks your data source object for the number of items in the specified section.
        - parameter:
            collectionView: The collection view requesting this information.
            section: An index number identifying a section in collectionView.
     
        - returns: The number of rows in section.
     */
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return favTeams.count
    }
    
    /*:
        Asks your data source object for the cell that corresponds to the specified item in the collection view.
        - parameter:
            collectionView: The collection view requesting this information.
            indexPath: The index path that specifies the location of the item.
        - returns: A configured cell object. You must not return nil from this method.
    */
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // cell variable stores the information that's used to populate each collectionView cell.
        let cell: FavsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "favsCell", for: indexPath) as! FavsCollectionViewCell
        
        cell.imageView.image = UIImage(named: favTeams[indexPath.row])
        
        if (favTeams.count > 0) {
            addMessage.isHidden = true
        }
        return cell
    }
    
    /*:
        Tells the delegate that the item at the specified index path was selected.
        - parameter:
            collectionView: The collection view object that is notifying you of the selection change.
            indexPath: The index path of the cell that was selected.
        - returns: A configured cell object. You must not return nil from this method.
     */
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //curr variable stores the current index of the item that the user selected.
        curr = indexPath.row
        
        performSegue(withIdentifier: "teamSegue", sender: self)
    }
   

}
