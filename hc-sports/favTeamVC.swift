//
//  favTeamVC.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/21/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class favTeamVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var overallRecord: UILabel!
    @IBOutlet weak var conferenceRecord: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if teams[curr] == "Men's Basketball"
        {
            return mBasketballSchedule.count
        }
        else if teams[curr] == "Women's Basketball"
        {
            return wBasketballSchedule.count
        }
        else if teams[curr] == "Men's Soccer"
        {
            return mSoccerSchedule.count
        }
        else if teams[curr] == "Women's Soccer"
        {
            return wSoccerSchedule.count
        }
        
        return mBasketballSchedule.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favGameCell", for: indexPath) as! favTeamTableViewCell
        
        if teams[curr] == "Women's Soccer"
        {
            cell.day.text = wSoccerDay[indexPath.row]
            cell.date.text = wSoccerDate[indexPath.row]
            cell.opponent.text = wSoccerSchedule[indexPath.row]
            cell.result.text = wSoccerResults[indexPath.row]
        }
        else if teams[curr] == "Men's Basketball"
        {
            cell.day.text = mBasketballDay[indexPath.row]
            cell.date.text = mBasketballDate[indexPath.row]
            cell.opponent.text = mBasketballSchedule[indexPath.row]
            cell.result.text = mBasketballResults[indexPath.row]
        }
        else if teams[curr] == "Women's Basketball"
        {
            cell.day.text = wBasketballDay[indexPath.row]
            cell.date.text = wBasketballDate[indexPath.row]
            cell.opponent.text = wBasketballSchedule[indexPath.row]
            cell.result.text = wBasketballResults[indexPath.row]
        }
        else if teams[curr] == "Men's Soccer"
        {
            cell.day.text = mSoccerDay[indexPath.row]
            cell.date.text = mSoccerDate[indexPath.row]
            cell.opponent.text = mSoccerSchedule[indexPath.row]
            cell.result.text = mSoccerResults[indexPath.row]
        }
        
        
        return cell
    }
    
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
