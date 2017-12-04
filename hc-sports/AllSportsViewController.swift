//
//  AllSportsViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 11/29/17.
//  Copyright © 2017 Stephanie Iglesias. All rights reserved.
//

//import Foundation
import UIKit

class AllSportsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var sports = ["Men's Basketball", "Men's Soccer", "Women's Basetball", "Women's Soccer"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sports.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "SportsCell")
        cell?.textLabel?.text = sports[indexPath.row]
        
        return cell!
    }
}
