//
//  HighlightsVC.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/23/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit
import TwitterKit

class HighlightsVC: UICollectionViewController {
    var tweets = [String]()

    @IBOutlet var tweetView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Hightlights"
        
//        collectionView?.backgroundColor = UIColor.white
//        collectionView?.alwaysBounceVertical = true
        
        let client = TWTRAPIClient()
//        var dataSource = TWTRCollectionTimelineDataSource(collectionID: "177998087", apiClient: client)
    
    }
    
//    convenience init() {
//        let client = TWTRAPIClient()
//        var dataSource = TWTRCollectionTimelineDataSource(collectionID: "177998087", apiClient: client)
//        self.init(dataSource: 5)
//        
//         Show Tweet actions
//        self.showTweetActions = true
//    }
    
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

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//
//
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tweetCell", for: indexPath) as! HighlightsCollectionViewCell
//        cell.tweet.text = tweets[indexPath.row]
//
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        return CGSize.init(width: 100, height: 80)
//    }


}
