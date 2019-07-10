//
//  MyMusicTableViewController.swift
//  Music Player
//
//  Created by Binh Phan on 09.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit

class MyMusicTableViewController: UITableViewController {

    // MARK: Properties
    
    var albums = [Album]()
    let allAlbums = AlbumList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
                
        loadSampleAlbum()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return albums.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "MyMusicTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MyMusicTableViewCell else {
            fatalError("The dequeued cell is not an instance of myMusicTableViewCell.")
        }

        // Fetches the appropriate album for the data source layout.
        let album = albums[indexPath.row]
        
        cell.myMusicCoverImageView.image = album.albumCover
        cell.myMusicNameLabel.text = album.albumName
        cell.myMusicArtistLabel.text = album.albumArtist
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    // Deselect Row when clicked
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // Mark: Private Methods
 
    private func loadSampleAlbum() {
        
        let albumList: AlbumList = AlbumList.init()
        
        for index in 0..<albumList.myMusic.count {
            
            albums += [albumList.myMusic[index]]
        }
        
    }

}
