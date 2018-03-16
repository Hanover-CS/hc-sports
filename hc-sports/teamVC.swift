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
            overallRecord.text = "18-9"
            conferenceRecord.text = "13-5"
        }
        else if teams[myIndex] == "Men's Soccer" {
            overallRecord.text = "13-4-2"
            conferenceRecord.text = "7-1-1"
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
