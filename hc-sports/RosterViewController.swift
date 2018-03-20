//
//  RosterViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 12/27/17.
//  Copyright © 2017 Stephanie Iglesias. All rights reserved.
//

import UIKit

class RosterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
//        tableView.rowHeight = UITableViewAutomaticDimension
//        tableView.estimatedRowHeight = 44
//         code above not worling/not resizing cell height
        
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
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
