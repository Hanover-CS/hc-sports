//
//  AllSportsViewController.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 11/29/17.
//  Copyright © 2017 Stephanie Iglesias. All rights reserved.
//

//import Foundation
import UIKit
import Firebase

var teams = ["Men's Basketball", "Men's Soccer", "Women's Basketball", "Women's Soccer"]
var myIndex = 0
class AllSportsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var databaseRef: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        databaseRef = Database.database().reference()
    }

//    func post() {
//        let title = "Title"
//        let message = "Message"
//
//        let post : [String : String] = ["title" : title,
//                                        "message" : message]
//
//        databaseRef.child("Posts").childByAutoId().setValue(post)
//    }
    
    func postTeams() {
        let teamName = "Team Name"
        let overall = "Overall Record"
        let conference = "Conference Record"
        
        let postTeams : [String : String] = ["teamName" : teamName,
                                        "overall" : overall,
                                        "conference" : conference]
        
        databaseRef.child("Teams").childByAutoId().setValue(postTeams)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: MyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "sportsCell", for: indexPath) as! MyTableViewCell
        
        cell.textLabel?.text = teams[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
        
    }
}
