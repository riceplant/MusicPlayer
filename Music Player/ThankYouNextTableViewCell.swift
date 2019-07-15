//
//  ThankYouNextTableViewCell.swift
//  Music Player
//
//  Created by Binh Phan on 11.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit

class ThankYouNextTableViewCell: UITableViewCell {
    
    // Mark: Properties
    @IBOutlet weak var songCoverImageView: UIImageView!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
