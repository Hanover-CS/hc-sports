//
//  teamVC.swift
//  
//
//  Created by Stephanie Iglesias on 12/15/17.
//

import UIKit

class teamVC: UIViewController {
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var overallRecord: UILabel!
    @IBOutlet weak var conferenceRecord: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.title = teams[curr]

        if teams[curr] == "Men's Basketball" {
            overallRecord.text = mBasketballOverallRecord
            conferenceRecord.text = mBasketballConferenceRecord
        }
        else if teams[curr] == "Women's Basketball" {
            overallRecord.text = wBasketballOverallRecord
            conferenceRecord.text = wBasketballConferenceRecord
        }
        else if teams[curr] == "Men's Soccer" {
            overallRecord.text = mSoccerOverallRecord
            conferenceRecord.text = mSoccerConferenceRecord
        }
        else if teams[curr] == "Women's Soccer" {
            overallRecord.text = wSoccerOverallRecord
            conferenceRecord.text = wSoccerConferenceRecord
        }

    }
    
    @IBAction func rosterButton(_ sender: UIButton) {
        performSegue(withIdentifier: "rosterSeg", sender: self)
    }
    
}
