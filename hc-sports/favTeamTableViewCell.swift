//
//  favTeamTableViewCell.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/25/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class favTeamTableViewCell: UITableViewCell {
    
    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var opponent: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
