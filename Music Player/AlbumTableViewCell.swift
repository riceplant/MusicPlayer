//
//  AlbumTableViewCell.swift
//  Music Player
//
//  Created by Binh Phan on 04.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var albumNameLabel: UILabel!
    @IBOutlet weak var albumCoverImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
