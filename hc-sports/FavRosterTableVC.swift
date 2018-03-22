//
//  FavRosterTableVC.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/21/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class FavRosterTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    public func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
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

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
