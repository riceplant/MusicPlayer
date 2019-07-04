//
//  AlbumList.swift
//  Music Player
//
//  Created by Binh Phan on 04.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import Foundation
import UIKit

class AlbumList {
    
    let tropicalBeatsCover = UIImage(named: "tropical_beats")
    let vibeGuideCover = UIImage(named: "vibe_guide")
    let summerChillCover = UIImage(named: "summer_chill")
    let chillOutLoungeCover = UIImage(named: "chillout_lounge")
    let jazzVibeCover = UIImage(named: "jazz_vibe")
    let sweetSoulChilloutCover = UIImage(named: "sweet_soul_chillout")
    let thankYouNextCover = UIImage(named: "thankYouNext")
    
    var travel = [Album]()
    var chill = [Album]()
    var myMusic = [Album]()
    
    init() {
        travel.append(Album(cover: tropicalBeatsCover, name: "Tropical Beats")!)
        travel.append(Album(cover: vibeGuideCover, name: "Vibe Guide")!)
        travel.append(Album(cover: summerChillCover, name: "Summer Chillout")!)
        
        chill.append(Album(cover: chillOutLoungeCover, name: "Chillout Lounge")!)
        chill.append(Album(cover: jazzVibeCover, name: "Jazz Vibe")!)
        chill.append(Album(cover: sweetSoulChilloutCover, name: "Sweet Soul Chillout")!)
        
        myMusic.append(Album(cover: thankYouNextCover, name: "Thank You, Next", artist: "Ariana Grande")!)
        
    }
    
    
}
