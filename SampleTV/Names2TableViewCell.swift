//
//  Names2TableViewCell.swift
//  SampleTV
//
//  Created by vmulugu on 9/17/20.
//  Copyright © 2020 vmulugu. All rights reserved.
//

import UIKit

class Names2TableViewCell: UITableViewCell {
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var includedLabel: UILabel!
    @IBOutlet weak var usedLabel: UILabel!
    @IBOutlet weak var remainingLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
