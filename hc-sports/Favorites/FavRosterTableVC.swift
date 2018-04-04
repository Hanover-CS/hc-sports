//
//  FavRosterTableVC.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/21/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class FavRosterTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    /*:
        Asks the data source for a cell to insert in a particular location of the table view.
        - parameter:
            tableView: A table-view object requesting the cell.
            indexPath: An index path locating a row in tableView.
        - returns: An object inheriting from UITableViewCell that the table view can use for the specified row. An assertion is raised if you return nil.
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell variable stores the reusable table-view cell object for the specified reuse identifier and adds it to the table that's returned from the dequeueResuableCell method.
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FavRosterTableViewCell
        
        if favTeams[curr] == "Women's Soccer"
        {
            cell.playerName.text = wSoccer[indexPath.row]
            cell.playerPhoto.image = UIImage(named: wSoccer[indexPath.row])
            cell.playerNumber.text = wSoccerNum[indexPath.row]
            cell.playerYear.text = wSoccerYr[indexPath.row]
            cell.playerPosition.text = wSoccerPos[indexPath.row]
        }
        else if favTeams[curr] == "Men's Basketball"
        {
            cell.playerName.text = mBasketball[indexPath.row]
            cell.playerPhoto.image = UIImage(named: mBasketball[indexPath.row])
            cell.playerNumber.text = mBasketballNum[indexPath.row]
            cell.playerYear.text = mBasketballYr[indexPath.row]
            cell.playerPosition.text = mBasketballPos[indexPath.row]
        }
        else if favTeams[curr] == "Women's Basketball"
        {
            cell.playerName.text = wBasketball[indexPath.row]
            cell.playerPhoto.image = UIImage(named: wBasketball[indexPath.row])
            cell.playerNumber.text = wBasketballNum[indexPath.row]
            cell.playerYear.text = wBasketballYr[indexPath.row]
            cell.playerPosition.text = wBasketballPos[indexPath.row]
        }
        else if favTeams[curr] == "Men's Soccer"
        {
            cell.playerName.text = mSoccer[indexPath.row]
            cell.playerPhoto.image = UIImage(named: mSoccer[indexPath.row])
            cell.playerNumber.text = mSoccerNum[indexPath.row]
            cell.playerYear.text = mSoccerYr[indexPath.row]
            cell.playerPosition.text = mSoccerPos[indexPath.row]
        }
        return cell
    }
    
    // Implement viewDidLoad to do additional setup after loading the view, typically from a nib file.
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Implement didReceiveMemoryWarning to release any additional memory used by your view controller.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*:
        Asks the data source to return the number of sections in the table view.
        - parameter:
            tableView: An object representing the table view requesting this information.
        - returns: The number of sections in tableView. The default value is 1.
     */
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    /*:
        Tells the data source to return the number of rows in a given section of a table view.
        - parameter:
            tableView: The table-view object requesting this information.
            section: An index number identifying a section in tableView.
        - returns: The number of rows in section.
     */
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if favTeams[curr] == "Men's Basketball"
        {
            return mBasketball.count
        }
        else if favTeams[curr] == "Women's Basketball"
        {
            return wBasketball.count
        }
        else if favTeams[curr] == "Men's Soccer"
        {
            return mSoccer.count
        }
        else if favTeams[curr] == "Women's Soccer"
        {
            return wSoccer.count
        }
        return mBasketball.count
    }
}
