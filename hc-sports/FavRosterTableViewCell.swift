//
//  FavRosterTableViewCell.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/21/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import UIKit

class FavRosterTableViewCell: UITableViewCell {
    @IBOutlet weak var playerPhoto: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var playerYear: UILabel!
    @IBOutlet weak var playerNumber: UILabel!
    @IBOutlet weak var playerPosition: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
