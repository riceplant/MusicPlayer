//
//  ChillMusicTableViewCell.swift
//  Music Player
//
//  Created by Binh Phan on 09.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit

class ChillMusicTableViewCell: UITableViewCell {

    //Mark: Properties
    
    @IBOutlet weak var chillAlbumCoverImageVIew: UIImageView!
    @IBOutlet weak var chillAlbumNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
