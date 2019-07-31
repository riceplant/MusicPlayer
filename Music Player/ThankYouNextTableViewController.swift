//
//  ThankYouNextTableViewController.swift
//  Music Player
//
//  Created by Binh Phan on 11.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit

class ThankYouNextTableViewController: UITableViewController {
    
    var songs = [Song]()
    var allSongs = SongList()

    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleSongs()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return songs.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToNowPlaying" {
            let destVC = segue.destination as! NowPlayingViewController
            destVC.song = sender as? Song
        }
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        let song = songs[indexPath.row]
        let myMusicSegue = "GoToNowPlaying"
        
        performSegue(withIdentifier: myMusicSegue, sender: song)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cellIdentifier = "SongTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ThankYouNextTableViewCell else {
            fatalError("The dequeued cell is not an instance of SongTableViewCell.")
        }

        let song = songs[indexPath.row]
        
        cell.songCoverImageView.image = song.songCover
        cell.songNameLabel.text = song.songTitle
        cell.artistNameLabel.text = song.songArtist

        return cell
    }
    
    // MARK: Private Methods
    
    private func loadSampleSongs() {
        
        let songList: SongList = SongList.init()
        
        for index in 0..<songList.thankYouNext.count {
            
            songs += [songList.thankYouNext[index]]
        }
    }

}
