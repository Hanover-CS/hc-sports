//
//  SelectFavsViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 12/6/17.
//  Copyright © 2017 Stephanie Iglesias. All rights reserved.
//

//import Foundation
import UIKit

class SelectFavsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
   
    @IBOutlet var collectionView: UICollectionView!
    
    var sportsimages = ["men's basketball", "men's soccer", "women's basketball", "women's soccer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sportsimages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        cell.sportsImage.image = UIImage(named: sportsimages[indexPath.row])
        
        return cell
    }
    
}
