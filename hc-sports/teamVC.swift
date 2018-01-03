//
//  teamVC.swift
//  
//
//  Created by Stephanie Iglesias on 12/15/17.
//

import UIKit

class teamVC: UIViewController {
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.title = teams[myIndex]
    }
    
    @IBAction func rosterButton(_ sender: UIButton) {
        performSegue(withIdentifier: "rosterSeg", sender: self)
    }
    
}
