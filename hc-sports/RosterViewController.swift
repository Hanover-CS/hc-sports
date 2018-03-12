//
//  RosterViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 12/27/17.
//  Copyright © 2017 Stephanie Iglesias. All rights reserved.
//

import UIKit

class RosterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var mBasketball = ["Cam Fails", "Isaac Hibbard", "Logan Ratts", "Colin Smith", "Levi Buck", "John Williams", "Jacob Bray", "Blake Robertson", "Jordan Armstrong", "Ryan Cloncs", "Christian Reed", "Jackson Crawford", "Wes McKinney", "Kevin Williams", "Nick White", "Connor Washburn", "Parker Buse"]
    var mBasketballYr = ["Junior", "Freshman", "Sophomore", "Senior", "Senior", "Sophomore", "Sophomore", "Sophomore", "Freshman", "Sophomore", "Sophomore", "Sophomore", "Senior", "Sophmore", "Junior", "Freshman", "Senior"]
    var mBasketballNum = ["3", "5", "11", "12", "14", "15", "20", "21", "22", "25", "32", "33", "35", "40", "42", "45", "52"]
    var mBasketballPos = ["Guard", "Guard", "Guard", "Guard", "Guard", "Guard", "Guard", "Guard", "Forward", "Forward", "Forward", "Forward", "Forward", "Forward", "Forward", "Center", "Center"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return mBasketball.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RosterTableViewCell
        
        cell.playerName.text = mBasketball[indexPath.row]
        cell.playerPhoto.image = UIImage(named: mBasketball[indexPath.row])
        cell.playerNumber.text = mBasketballNum[indexPath.row]
        cell.playerYear.text = mBasketballYr[indexPath.row]
        cell.playerPosition.text = mBasketballPos[indexPath.row]
        
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
