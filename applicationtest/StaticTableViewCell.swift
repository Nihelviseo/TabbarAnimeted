//
//  StaticTableViewCell.swift
//  applicationtest
//
//  Created by Nihel Zerria on 08/03/2019.
//  Copyright © 2019 Nihel Zerria. All rights reserved.
//

import UIKit

class StaticTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
