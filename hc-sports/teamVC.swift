//
//  teamVC.swift
//  
//
//  Created by Stephanie Iglesias on 12/15/17.
//

import UIKit

class teamVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if teams[curr] == "Men's Basketball"
        {
            return mBasketballSchedule.count
        }
        else if teams[curr] == "Women's Basketball"
        {
            return wBasketball.count
        }
        else if teams[curr] == "Men's Soccer"
        {
            return mSoccer.count
        }
        else if teams[curr] == "Women's Soccer"
        {
            return wSoccer.count
        }
        
        return mBasketballSchedule.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath) as! teamTableViewCell
        
        cell.day.text = mBasketballDay[indexPath.row]
        cell.date.text = mBasketballDate[indexPath.row]
        cell.opponent.text = mBasketballSchedule[indexPath.row]
        cell.result.text = mBasketballResults[indexPath.row]
        
        return cell
    }
    
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var overallRecord: UILabel!
    @IBOutlet weak var conferenceRecord: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
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
