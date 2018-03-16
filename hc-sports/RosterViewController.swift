//
//  RosterViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 12/27/17.
//  Copyright © 2017 Stephanie Iglesias. All rights reserved.
//

import UIKit

class RosterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    // Women's Soccer Team information
    var wSoccer = ["Emma Debolt", "Charolette Verbanic", "Katie Perry", "Cassidy Evanson", "Kayla Nowlin", "Abi Childers", "Natalie Fausz", "Taylor Browning", "Mac Mattingly", "Daria Volker", "Lizzie Matchette", "Maisyn Garland", "Kaitlyn Rhodes" ,"Brandi Brock", "Mad Underhill", "Abby Daley", "Mackenzie Sims", "Claire Stockwell", "Katie Workman", "Kiki Crone", "Mikaila Heavrin", "Leah Ellis", "Shannon Hawkins", "Abby Shroyer", "Abby Howes", "Sam Royer"]
    var wSoccerYr = ["Sophomore", "Freshman", "Freshman", "Junior", "Sophomore", "Freshman", "Freshman", "Senior", "Freshman", "Senior", "Sophomore", "Sophomore", "Freshman", "Sophomore", "Freshman", "Junior", "Freshman", "Junior", "Senior", "Junior", "Sophomore", "Junior", "Junior", "Senior", "Sophomore", "Freshman"]
    var wSoccerNum = ["00", "0", "1", "2", "3", "4", "6", "7", "8", "10", "11", "14", "15", "16", "17", "19", "20", "21", "22", "23", "24", "25", "27", "32", "35", "40"]
    var wSoccerPos = ["GK", "GK", "GK", "Mid", "Forward", "Mid", "Forward", "Defense", "Forward", "Mid", "Defense", "Forward", "Mid", "Mid", "Defense", "Defense", "Mid", "Mid", "Defense", "Defense", "Defense", "Forward", "Mid", "Defense", "Mid", "GK"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
//        tableView.rowHeight = UITableViewAutomaticDimension
//        tableView.estimatedRowHeight = 44
//         code above not worling/not resizing cell height
        
        if teams[myIndex] == "Men's Basketball"
        {
            return mBasketball.count
        }
        else if teams[myIndex] == "Women's Basketball"
        {
            return wBasketball.count
        }
        else if teams[myIndex] == "Men's Soccer"
        {
            return mSoccer.count
        }
        else if teams[myIndex] == "Women's Soccer"
        {
            return wSoccer.count
        }
        
        return mBasketball.count
        
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RosterTableViewCell
        
        if teams[myIndex] == "Women's Soccer"
        {
            cell.playerName.text = wSoccer[indexPath.row]
            cell.playerPhoto.image = UIImage(named: wSoccer[indexPath.row])
            cell.playerNumber.text = wSoccerNum[indexPath.row]
            cell.playerYear.text = wSoccerYr[indexPath.row]
            cell.playerPosition.text = wSoccerPos[indexPath.row]
        }
        else if teams[myIndex] == "Men's Basketball"
        {
            cell.playerName.text = mBasketball[indexPath.row]
            cell.playerPhoto.image = UIImage(named: mBasketball[indexPath.row])
            cell.playerNumber.text = mBasketballNum[indexPath.row]
            cell.playerYear.text = mBasketballYr[indexPath.row]
            cell.playerPosition.text = mBasketballPos[indexPath.row]
        }
        else if teams[myIndex] == "Men's Soccer"
        {
            cell.playerName.text = mSoccer[indexPath.row]
            cell.playerPhoto.image = UIImage(named: mSoccer[indexPath.row])
            cell.playerNumber.text = mSoccerNum[indexPath.row]
            cell.playerYear.text = mSoccerYr[indexPath.row]
            cell.playerPosition.text = mSoccerPos[indexPath.row]
        }
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
