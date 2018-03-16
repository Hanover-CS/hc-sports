//
//  HighlightsViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 11/29/17.
//  Copyright © 2017 Stephanie Iglesias. All rights reserved.
//

//import Foundation
import UIKit
import TwitterKit
import FirebaseDatabase

class HighlightsViewController: UIViewController {
//    UITableViewDelegate, UITableViewDataSource
    let databaseRef = Database.database().reference()
    var tweets = [AnyObject]()
    
    static let cellId = "cellId"
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return tweets.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//
    
    @IBOutlet weak var twitterFeed: UITableViewCell!

    override func viewDidLoad() {
        super.viewDidLoad()
//        collectionView?.registerClass(StatusCell.self, forCellWithReuseIdentifier:
//            ViewController.cellId)
//        let client = TWTRAPIClient()
////        var dataSource = TWTRListTimelineDataSource(listSlug: "surfing", listOwnerScreenName: "HanoverPanthers", apiClient: client)
//        let dataSource = TWTRUserTimelineDataSource(screenName: "HanoverPathers", apiClient: TWTRAPIClient())
//        dataSource.includeReplies = true
        
//        self.databaseRef.child("HanoverPanthers").observe(.childAdded) { (snapshot: FIRDataSnapShot) in
//            self.tweets.append(snapshot)
//            self.twitterFeed.insert
//        }
//        TWTRUserTimelineDataSource(screenName: "HanoverPanters", apiClient: TWTRAPIClient())
//        self.twitterFeed.dataSource = self.dataSource;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
