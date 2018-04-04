//
//  SportsCollectionViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/19/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class allSportsCollectionViewController: UICollectionViewController {
    // Implement viewDidLoad to do additional setup after loading the view, typically from a nib file
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets the navigation title to "HC Athletics"
        navigationItem.title = "HC Athletics"
    }

    // Implement didReceiveMemoryWarning to release any additional memory used by your view controller.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*:
        Asks your data source object for the number of sections in the collection view.
        - parameter:
            collectionView: The collection view requesting this information. change.
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
        return teams.count
    }
    
    /*:
        Asks your data source object for the cell that corresponds to the specified item in the collection view.
        - parameter:
            collectionView: The collection view requesting this information.
            indexPath: The index path that specifies the location of the item.
        - returns: A configured cell object. You must not return nil from this method.
     */
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // cell variable stores the reusable table-view cell object for the specified reuse identifier and adds it to the table that's returned from the dequeueResuableCell method.
        let cell: allSportsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellImage", for: indexPath) as! allSportsCollectionViewCell

        cell.imageView.image = UIImage(named: teams[indexPath.row])
    
        return cell
    }
    
    /*:
        Tells the delegate that the item at the specified index path was selected.
        - parameter:
            collectionView: The collection view object that is notifying you of the selection change.
            indexPath: The index path of the cell that was selected.
     */
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //curr variable stores the current index of the item that the user selected.
        curr = indexPath.row
        
        performSegue(withIdentifier: "segue", sender: self)
    }
}
