//
//  addToFavsTableViewCell.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 2/11/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class addToFavsTableViewCell: UITableViewCell, UITableViewDataSource, UITableViewDelegate {

    var teams = ["Men's Basketball", "Men's Soccer", "Women's Basketball", "Women's Soccer"]
    var myIndex = 0
    
    //    @IBOutlet weak var addToFavs: UITableView!
    @IBOutlet var addToFavs: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addToFavs.delegate = self
        addToFavs.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: MyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "favsCell", for: indexPath) as! MyTableViewCell
        
        cell.textLabel?.text = teams[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "addToFavsSegue", sender: self)
        
    }

}
