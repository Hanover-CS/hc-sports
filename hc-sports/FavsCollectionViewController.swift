//
//  FavsCollectionViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/20/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class FavsCollectionViewController: UICollectionViewController {

    var favTeamsDest: [String] = []
    
    @IBOutlet weak var addMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Favorites"
    }

    override func viewDidAppear(_ animated: Bool) {
        if favTeams.count > 0 {
            super.collectionView?.reloadData()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return favTeams.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: FavsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "favsCell", for: indexPath) as! FavsCollectionViewCell
        
        cell.imageView.image = UIImage(named: favTeams[indexPath.row])
        if (favTeams.count > 0) {
            addMessage.isHidden = true
        }
        
        print("favTeam len:", favTeams)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        curr = indexPath.row
        
        performSegue(withIdentifier: "teamSegue", sender: self)
    }
   

}
