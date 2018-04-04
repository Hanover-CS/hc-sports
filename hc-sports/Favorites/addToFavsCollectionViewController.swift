//
//  addToFavsCollectionViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/20/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class addToFavsCollectionViewController: UICollectionViewController {
    // Implement viewDidLoad to do additional setup after loading the view, typically from a nib file.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets the navigation title to "Add to Favorites" to prompt the user to add teams to their favorites list.
        navigationItem.title = "Add to Favorites"
    }
   
    // Implement didReceiveMemoryWarning to release any additional memory used by your view controller.
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
            section: An index number identifying a section in collectionView. This index value is 0-based.
        - returns: The number of rows in section.
     */
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return notFavTeams.count
    }

    /*:
        Asks your data source object for the cell that corresponds to the specified item in the collection view.
        - parameter:
            collectionView: The collection view requesting this information.
            indexPath: The index path that specifies the location of the item.
        - returns: A configured cell object. You must not return nil from this method.
     */
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: addToFavsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "addCell", for: indexPath) as! addToFavsCollectionViewCell
        
        cell.imageView.image = UIImage(named: notFavTeams[indexPath.row])
    
        return cell
    }
    
    /*:
        Tells the delegate that the item at the specified index path was selected.
        - parameter:
            collectionView: The collection view object that is notifying you of the selection change.
            indexPath: The index path of the cell that was selected.
     */
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        favTeams.append(notFavTeams[indexPath.row])
        notFavTeams.remove(at: indexPath.row)
        collectionView.reloadData()
    }
}
