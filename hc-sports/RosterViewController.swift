//
//  RosterViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 12/27/17.
//  Copyright © 2017 Stephanie Iglesias. All rights reserved.
//

import UIKit

class RosterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // Men's Basketball Team information
    var mBasketball = ["Cam Fails", "Isaac Hibbard", "Logan Ratts", "Colin Smith", "Levi Buck", "John Williams", "Jacob Bray", "Blake Robertson", "Jordan Armstrong", "Ryan Cloncs", "Christian Reed", "Jackson Crawford", "Wes McKinney", "Kevin Williams", "Nick White", "Connor Washburn", "Parker Buse"]
    var mBasketballYr = ["Junior", "Freshman", "Sophomore", "Senior", "Senior", "Sophomore", "Sophomore", "Sophomore", "Freshman", "Sophomore", "Sophomore", "Sophomore", "Senior", "Sophmore", "Junior", "Freshman", "Senior"]
    var mBasketballNum = ["3", "5", "11", "12", "14", "15", "20", "21", "22", "25", "32", "33", "35", "40", "42", "45", "52"]
    var mBasketballPos = ["Guard", "Guard", "Guard", "Guard", "Guard", "Guard", "Guard", "Guard", "Forward", "Forward", "Forward", "Forward", "Forward", "Forward", "Forward", "Center", "Center"]
    
    // Women's Soccer Team information
    var wSoccer = ["Emma Debolt", "Charolette Verbanic", "Katie Perry", "Cassidy Evanson", "Kayla Nowlin", "Abi Childers", "Natalie Fausz", "Taylor Browning", "Mac Mattingly", "Daria Volker", "Lizzie Matchette", "Maisyn Garland", "Kaitlyn Rhodes" ,"Brandi Brock", "Mad Underhill", "Abby Daley", "Mackenzie Sims", "Claire Stockwell", "Katie Workman", "Kiki Crone", "Mikaila Heavrin", "Leah Ellis", "Shannon Hawkins", "Abby Shroyer", "Abby Howes", "Sam Royer"]
    var wSoccerYr = ["Sophomore", "Freshman", "Freshman", "Junior", "Sophomore", "Freshman", "Freshman", "Senior", "Freshman", "Senior", "Sophomore", "Sophomore", "Freshman", "Sophomore", "Freshman", "Junior", "Freshman", "Junior", "Senior", "Junior", "Sophomore", "Junior", "Junior", "Senior", "Sophomore", "Freshman"]
    var wSoccerNum = ["00", "0", "1", "2", "3", "4", "6", "7", "8", "10", "11", "14", "15", "16", "17", "19", "20", "21", "22", "23", "24", "25", "27", "32", "35", "40"]
    var wSoccerPos = ["GK", "GK", "GK", "Mid", "Forward", "Mid", "Forward", "Defense", "Forward", "Mid", "Defense", "Forward", "Mid", "Mid", "Defense", "Defense", "Mid", "Mid", "Defense", "Defense", "Defense", "Forward", "Mid", "Defense", "Mid", "GK"]
    
    // Men's Soccer Team information
    var mSoccer = ["Chris Brashear", "Will Bedel", "Thomas Doering", "Chris Pitre", "Evan Stacy", "Hunter Gurthrie", "Will Bridgeman", "Dominic Isadore", "Nicholas Ash", "Tanner Korfhagen", "Dean Mock", "Michael Dumaine", "Ian Waldrop", "Matt Marchiorlatti", "Ryan Keeney", "Dean Collier", "Renato Yostsui", "Myles Joseph", "Jason Karrel", "Zach Barnes", "Brad Simpson", "Bailey Allen", "Chris Roe", "Caleb Riddle", "Jaiden Scott", "Chuck Moore", "Logan Davis", "Michael Kerr", "Brady Gesenhues", "Alex Roberts", "Samuel Mantz", "Ethan Miller", "Henry Simon", "Aaron Stocksdale", "Cameron Rogers", "Harrison Zoellner"]
    var mSoccerYr = ["Sophmore", "Freshman", "Senior", "Freshman", "Sophomore", "Junior", "Senior", "Senior", "Freshman", "Junior", "Junior", "Senior", "Freshman", "Junior", "Senior", "Senior", "Freshman", "Freshman", "Senior", "Senior", "Freshman", "Senior", "Sophomore", "Freshman", "Freshman", "Freshman", "Junior", "Freshman", "Sophomore", "Freshman", "Junior", "Freshman", "Freshman", "Freshman", "Junior", "Freshman"]
    var mSoccerNum = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "19", "20", "21", "23", "24" ,"25", "26", "27", "28", "29", "31", "32", "33", "34", "35", "37", "40", "99"]
    var mSoccerPos = ["GK", "GK", "Defense", "Mid", "Mid", "Mid", "Mid", "Forward", "Mid", "Forward", "Forward", "Defense", "Mid", "Mid", "Defense", "Defense", "Mid", "Defense", "Mid", "Defense", "Forward", "Mid", "Forward", "Mid", "Mid", "Defense", "Defense", "Defense", "Mid", "Defense", "Forward", "Defense", "Defense", "GK", "Mid", "GK"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
//        tableView.rowHeight = UITableViewAutomaticDimension
//        tableView.estimatedRowHeight = 44
//         code above not worling/not resizing cell height
        
        return wSoccer.count
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
