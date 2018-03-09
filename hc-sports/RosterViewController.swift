//
//  RosterViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 12/27/17.
//  Copyright © 2017 Stephanie Iglesias. All rights reserved.
//

import UIKit

class RosterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var mBasketballPlayers = ["Cam Fails": ["Cam Fails", "Junior", "3", "Guard"], "Isaac Hibbard": ["Isaac Hibbard", "Freshman", "5", "Guard"], "Logan Ratts": ["Logan Ratts", "Sophomore", "11"], "Colin Smith": ["Colin Smith", "Senior", "12", "Guard"], "Levi Buck": ["Levi Buck", "Senior", "14", "Guard"], "John Williams": ["John Williams", "Sophomore", "15", "Guard"], "Jacob Bray": ["Jacob Bray", "Sophomore", "20", "Guard"], "Blake Robertson": ["Blake Robertson", "Sophomore", "21", "Guard"], "Jordan Armstrong": ["Jordan Armstrong", "Freshman", "22", "Forward"], "Ryan Cloncs": ["Ryan Cloncs", "Sophomore", "25", "Forward"], "Christain Reed": ["Cam Fails", "Sophomore", "32", "Forward"], "Jackson Crawford": ["Jackson Crawford", "Sophomore", "33", "Forward"], "Wes McKinney": ["Wes McKinney", "Senior", "35", "Forward"], "Kevin Williams": ["Kevin Williams", "Sophomore", "40", "Forward"], "Nick White": ["Nick White", "Junior", "42", "Forward"], "Connor Washburn": ["Connor Washburn", "Freshman", "45", "Center"], "Parker Buse": ["Parker Buse", "Senior", "52", "Center"]]
    var mBasketball = ["Cam Fails", "Isaac Hibbard", "Logan Ratts", "Colin Smith", "Levi Buck", "John Williams", "Jacob Bray", "Blake Robertson", "Jordan Armstrong", "Ryan Cloncs", "Christian Reed", "Jackson Crawford", "Wes McKinney", "Kevin Williams", "Nick White", "Connor Washburn", "Parker Buse"]
//    var mBasketballYr = ["Junior", "Freshman", "Sophomore", "Senior", "Senior", "Sophomore", "Sophomore", "Sophomore", "]
    var mBasketballNum = [3, 5, 11, 12, 14, 15, 20, 21, 22, 25, 32, 33, 35, 40, 42, 45, 52]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return mBasketball.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RosterTableViewCell
        
//        for (key, value) in mBasketballPlayers {
////            cell.playerName.text = key
////            cell.playerName.text = self.mBasketballPlayers[indexPath.row]
//            cell.playerPhoto.image = UIImage(named: value[0])
//        }
        cell.playerName.text = mBasketball[indexPath.row]
        cell.playerPhoto.image = UIImage(named: mBasketball[indexPath.row])
        
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
