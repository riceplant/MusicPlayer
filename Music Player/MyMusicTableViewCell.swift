//
//  MyMusicTableViewCell.swift
//  Music Player
//
//  Created by Binh Phan on 09.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit

class MyMusicTableViewCell: UITableViewCell {
    
    // MARK: Properties:
        
    @IBOutlet weak var myMusicCoverImageView: UIImageView!
    @IBOutlet weak var myMusicNameLabel: UILabel!
    @IBOutlet weak var myMusicArtistLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
