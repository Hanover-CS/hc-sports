//
//  addToFavsCollectionViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/20/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

var notFavTeams = ["Men's Basketball", "Women's Basketball", "Men's Soccer", "Women's Soccer"]

class addToFavsCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Add to Favorites"
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return notFavTeams.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: addToFavsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "addCell", for: indexPath) as! addToFavsCollectionViewCell
        
        cell.imageView.image = UIImage(named: notFavTeams[indexPath.row])
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        favTeams.append(notFavTeams[indexPath.row])
        notFavTeams.remove(at: indexPath.row)
        collectionView.reloadData()
        print("favTeams:", favTeams)
    }
}
