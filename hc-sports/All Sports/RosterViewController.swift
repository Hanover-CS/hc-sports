//
//  RosterViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 12/27/17.
//  Copyright © 2017 Stephanie Iglesias. All rights reserved.
//

import UIKit

class RosterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // Implement viewDidLoad to do additional setup after loading the view, typically from a nib file.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /*:
        Tells the data source to return the number of rows in a given section of a table view.
        - parameter:
            tableView: The table-view object requesting this information.
            section: An index number identifying a section in tableView.
        - returns: The number of rows in section.
     */
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        if teams[curr] == "Men's Basketball"
        {
            return mBasketball.count
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
        return mBasketball.count
    }
    
    /*:
        Asks the data source for a cell to insert in a particular location of the table view.
        - parameter:
            tableView: A table-view object requesting the cell.
            indexPath: An index path locating a row in tableView.
        - returns: The number of rows in section.
     */
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // cell variable stores the reusable table-view cell object for the specified reuse identifier and adds it to the table that's returned from the dequeueResuableCell method.
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RosterTableViewCell
        
        if teams[curr] == "Women's Soccer"
        {
            cell.playerName.text = wSoccer[indexPath.row]
            cell.playerPhoto.image = UIImage(named: wSoccer[indexPath.row])
            cell.playerNumber.text = wSoccerNum[indexPath.row]
            cell.playerYear.text = wSoccerYr[indexPath.row]
            cell.playerPosition.text = wSoccerPos[indexPath.row]
        }
        else if teams[curr] == "Men's Basketball"
        {
            cell.playerName.text = mBasketball[indexPath.row]
            cell.playerPhoto.image = UIImage(named: mBasketball[indexPath.row])
            cell.playerNumber.text = mBasketballNum[indexPath.row]
            cell.playerYear.text = mBasketballYr[indexPath.row]
            cell.playerPosition.text = mBasketballPos[indexPath.row]
        }
        else if teams[curr] == "Women's Basketball"
        {
            cell.playerName.text = wBasketball[indexPath.row]
            cell.playerPhoto.image = UIImage(named: wBasketball[indexPath.row])
            cell.playerNumber.text = wBasketballNum[indexPath.row]
            cell.playerYear.text = wBasketballYr[indexPath.row]
            cell.playerPosition.text = wBasketballPos[indexPath.row]
        }
        else if teams[curr] == "Men's Soccer"
        {
            cell.playerName.text = mSoccer[indexPath.row]
            cell.playerPhoto.image = UIImage(named: mSoccer[indexPath.row])
            cell.playerNumber.text = mSoccerNum[indexPath.row]
            cell.playerYear.text = mSoccerYr[indexPath.row]
            cell.playerPosition.text = mSoccerPos[indexPath.row]
        }
        return cell
    }

    // Implement didReceiveMemoryWarning to release any additional memory used by your view controller.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
