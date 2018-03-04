//
//  addToFavsViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 2/11/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

var currIndex = 0

class addToFavsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var team = ["Men's Basketball", "Men's Soccer", "Women's Basketball", "Women's Soccer"]
    
    @IBOutlet weak var tableview: UITableView!
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return teams.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = favsView.dequeueReusableCell(withIdentifier: "favsCell", for: indexPath) as! addToFavsTableViewCell
//
//        cell.textLabel?.text = teams[indexPath.row]
//
//        return cell
//
//    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        currIndex = indexPath.row
//        performSegue(withIdentifier: "favsSegue", sender: self)
//
//    }
    
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
//                tableview.delegate = self
//                tableview.dataSource = self
    }
}
