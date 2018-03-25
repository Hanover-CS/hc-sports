//
//  HighlightsVC.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/23/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit
import TwitterKit
import STTwitter

class HighlightsVC: UICollectionViewController {
    var tweets = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Hightlights"
        
        collectionView?.backgroundColor = UIColor.white
        collectionView?.alwaysBounceVertical = true
        
//        let twitter = TWTRTwitter.sharedInstance().start(withConsumerKey:"Et5EGLfDftgJsQWzZMobIkFDb", consumerSecret:"7XZYrcZpKJYuubsOdlqHc9lBxlSUTYEEYbYuPbRcwBeStGBdlJ")
//        let twitter = TWTRTwitter.sharedInstance().authConfig(clientId: "Hanover Panthers")
//        twitter.verifyCredentialsWithUserSuccessBlock({ (username, userId) -> Void
//            in
//            print(username, userId)
//        } ) {(error) -> Void in
//            print(error)
//        }
        let client = TWTRAPIClient()
//        self.dataSource = TWTRListTimelineDataSource(listSlug: "surfing", listOwnerScreenName: "HanoverPanthers", APIClient: client)
//        let dataSource = TWTRUserTimelineDataSource(screenName: "HanoverPanthers", apiClient: TWTRAPIClient())
//        dataSource.includeReplies = true
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
        return 5
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tweetCell", for: indexPath) as! HighlightsCollectionViewCell
        cell.tweet.text = "Twitter Status Update \(indexPath.item)"
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        return CGSize.init(width: 100, height: 80)
//    }


}
