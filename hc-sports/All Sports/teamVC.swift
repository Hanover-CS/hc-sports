//
//  teamVC.swift
//  
//
//  Created by Stephanie Iglesias on 12/15/17.
//

import UIKit

class teamVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    /*:
        Tells the data source to return the number of rows in a given section of a table view.
        - parameter:
            tableView: The table-view object requesting this information.
            section: An index number identifying a section in tableView.
        - returns: The number of rows in section.
     */
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

    /*:
        Asks the data source for a cell to insert in a particular location of the table view.
        - parameter:
            tableView: A table-view object requesting the cell.
            indexPath: An index path locating a row in tableView.
        - returns: An object inheriting from UITableViewCell that the table view can use for the specified row. An assertion is raised if you return nil.
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell variable stores the reusable table-view cell object for the specified reuse identifier and adds it to the table that's returned from the dequeueResuableCell method.
         let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath) as! teamTableViewCell

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
    
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var overallRecord: UILabel!
    @IBOutlet weak var conferenceRecord: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    // Implement viewDidLoad to do additional setup after loading the view, typically from a nib file.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets the title page to the team selected by the user.
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
    // Roster button is an action button used to navigate the user to the team's roster.
    @IBAction func rosterButton(_ sender: UIButton) {
        performSegue(withIdentifier: "rosterSeg", sender: self)
    }
    
}
