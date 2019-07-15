//
//  Song.swift
//  Music Player
//
//  Created by Binh Phan on 11.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import Foundation
import UIKit

class Song {
    
    var songTitle: String
    var songArtist: String
    var songCover: UIImage?
    
    init(title: String, artist: String, cover: UIImage?) {
        
        songTitle = title
        songArtist = artist
        songCover = cover!
    }
}
