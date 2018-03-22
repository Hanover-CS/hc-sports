//
//  favTeamVC.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/21/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class favTeamVC: UIViewController {
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var overallRecord: UILabel!
    @IBOutlet weak var conferenceRecord: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.title = favTeams[curr]
        
        if favTeams[curr] == "Men's Basketball" {
            overallRecord.text = mBasketballOverallRecord
            conferenceRecord.text = mBasketballConferenceRecord
        }
        else if favTeams[curr] == "Women's Basketball" {
            overallRecord.text = wBasketballOverallRecord
            conferenceRecord.text = wBasketballConferenceRecord
        }
        else if favTeams[curr] == "Men's Soccer" {
            overallRecord.text = mSoccerOverallRecord
            conferenceRecord.text = mSoccerConferenceRecord
        }
        else if favTeams[curr] == "Women's Soccer" {
            overallRecord.text = wSoccerOverallRecord
            conferenceRecord.text = wSoccerConferenceRecord
        }
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
