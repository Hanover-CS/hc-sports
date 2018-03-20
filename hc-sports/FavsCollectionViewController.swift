//
//  FavsCollectionViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/20/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class FavsCollectionViewController: UICollectionViewController {
    var curr = 0
    @IBOutlet weak var addMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        navigationItem.title = "Favorites"
        if (favTeams.count > 0) {
            addMessage.isHidden = true
        }
        // Do any additional setup after loading the view.
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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
         return favTeams.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: FavsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "favsCell", for: indexPath) as! FavsCollectionViewCell
        
        cell.imageView.image = UIImage(named: favTeams[indexPath.row])
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        curr = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }

}
