//
//  addToFavsCollectionViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/20/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

var notFavTeams = ["Men's Basketball", "Women's Basketball", "Men's Soccer", "Women's Soccer"]
//protocol myProtocol {
//    func updateArr(favTeams: [String])
//}
class addToFavsCollectionViewController: UICollectionViewController {

//    var myProtocol: myProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        navigationItem.title = "Add to Favorites"

        // Do any additional setup after loading the view.
    }
    

    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
     // MARK: - Navigation

//     In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if (segue.identifier == "addSegue") {
//
////            let dVC = (segue.destination as! FavsCollectionViewController)
//            let navVC = segue.destination as! UINavigationController
//            let tableVC = navVC.viewControllers.first as! FavsCollectionViewController
//
//            tableVC.favTeamsDest = favTeams
////            tablefavTeamsDest = favTeams
//            collectionView?.reloadData()
//        }
//    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
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
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

//}

