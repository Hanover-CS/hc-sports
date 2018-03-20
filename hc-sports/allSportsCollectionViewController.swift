//
//  SportsCollectionViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/19/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

var teamsImages = ["men's basketball", "women's basketball", "men's soccer", "women's soccer"]
var teams = ["Men's Basketball", "Women's Basketball", "Men's Soccer", "Women's Soccer"]
var curr = 0

class allSportsCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Hanover College Athletics"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teamsImages.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell: allSportsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellImage", for: indexPath) as! allSportsCollectionViewCell

        cell.imageView.image = UIImage(named: teamsImages[indexPath.row])
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        curr = indexPath.row
        
        performSegue(withIdentifier: "segue", sender: self)
    }
}
