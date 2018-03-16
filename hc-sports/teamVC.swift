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
        
        titleLabel.title = teams[myIndex]

        if teams[myIndex] == "Men's Basketball" {
            overallRecord.text = mBasketballOverallRecord
            conferenceRecord.text = mBasketballConferenceRecord
        }
        else if teams[myIndex] == "Women's Basketball" {
            overallRecord.text = wBasketballOverallRecord
            conferenceRecord.text = wBasketballConferenceRecord
        }
        else if teams[myIndex] == "Men's Soccer" {
            overallRecord.text = mSoccerOverallRecord
            conferenceRecord.text = mSoccerConferenceRecord
        }
        else if teams[myIndex] == "Women's Soccer" {
            overallRecord.text = "12-5-1"
            conferenceRecord.text = "6-2-1"
        }
    }
    
    @IBAction func rosterButton(_ sender: UIButton) {
        performSegue(withIdentifier: "rosterSeg", sender: self)
    }
    
}
