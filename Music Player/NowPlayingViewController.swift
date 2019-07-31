//
//  NowPlayingViewController.swift
//  Music Player
//
//  Created by Binh Phan on 31.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit

class NowPlayingViewController: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var nowPlayingAlbumCover: UIImageView!
    @IBOutlet weak var nowPlayingTitle: UILabel!
    @IBOutlet weak var nowPlayingArtist: UILabel!
    
    var song: Song?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
    }
    
    // MARK: Private Methods
    
    func setUI() {
        nowPlayingAlbumCover.image = song?.songCover
        nowPlayingTitle.text = song?.songTitle
        nowPlayingArtist.text = song?.songArtist
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
