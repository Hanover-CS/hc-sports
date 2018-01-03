//
//  RosterViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 12/27/17.
//  Copyright © 2017 Stephanie Iglesias. All rights reserved.
//

import UIKit

class RosterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let images = [ "HC logo", "HC logo", "HC logo", "Hc logo", "Hc logo"]
    let players = ["Leah", "Shannon", "Abby", "Cass", "Katie"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return images.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RosterTableViewCell
        
//        cell.playerPhoto.image = UIImage(named: (images[indexPath.row] + ".jpg"))
//        cell.playerName.text = players[indexPath.row]
        
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
