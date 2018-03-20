//
//  addToFavsViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 2/11/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class addToFavsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableview: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return teams.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favsCell", for: indexPath) as! addToFavsTableViewCell
        cell.textLabel?.text = teams[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
