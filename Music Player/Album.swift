//
//  Album.swift
//  Music Player
//
//  Created by Binh Phan on 04.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit

class Album {
    
    //MARK: Properties
    
    var albumCover: UIImage
    var albumName: String
    
    // MARK: Initilization
    
    init?(cover: UIImage?, name: String) {
        
        // The name must not be empy
        
        guard !name.isEmpty else {
            return nil
        }
        
        albumCover = cover!
        albumName = name
    }
}
