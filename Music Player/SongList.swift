//
//  SongList.swift
//  Music Player
//
//  Created by Binh Phan on 11.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import Foundation
import UIKit

class SongList {
    
    var thankYouNext = [Song]()
    let thankYouNextCover = UIImage(named: "thankYouNext")
    
    init() {
        
        thankYouNext.append(Song(title: "imagine", artist: "Ariana Grande", cover: thankYouNextCover))
        thankYouNext.append(Song(title: "needy", artist: "Ariana Grande", cover: thankYouNextCover))
        thankYouNext.append(Song(title: "NASA", artist: "Ariana Grande", cover: thankYouNextCover))
        thankYouNext.append(Song(title: "bloodline", artist: "Ariana Grande", cover: thankYouNextCover))
        thankYouNext.append(Song(title: "fake smile", artist: "Ariana Grande", cover: thankYouNextCover))
        thankYouNext.append(Song(title: "bad idea", artist: "Ariana Grande", cover: thankYouNextCover))
        thankYouNext.append(Song(title: "make up", artist: "Ariana Grande", cover: thankYouNextCover))
        thankYouNext.append(Song(title: "ghostin", artist: "Ariana Grande", cover: thankYouNextCover))
        thankYouNext.append(Song(title: "in my head", artist: "Ariana Grande", cover: thankYouNextCover))
        thankYouNext.append(Song(title: "7 rings", artist: "Ariana Grande", cover: thankYouNextCover))
        thankYouNext.append(Song(title: "thank you, next", artist: "Ariana Grande", cover: thankYouNextCover))
        thankYouNext.append(Song(title: "break up with your girlfriend, i'm bored", artist: "Ariana Grande", cover: thankYouNextCover))
    }
}
