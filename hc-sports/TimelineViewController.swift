//
//  TimelineViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 4/2/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let client = TWTRAPIClient()
//        let dataSource = TWTRUserTimelineDataSource(screenName: "HanoverPanthers", apiClient: client)
        TWTRCollectionTimelineDataSource(collectionID: "177998087", apiClient: client)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
