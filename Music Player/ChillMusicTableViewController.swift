//
//  ChillMusicTableViewController.swift
//  Music Player
//
//  Created by Binh Phan on 08.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit

class ChillMusicTableViewController: UITableViewController {

    // MARK: Properties
    
    var albums = [Album]()
    let allAlbums = AlbumList()

    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleAlbums()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return albums.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "ChillAlbumTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ChillMusicTableViewCell else {
            fatalError("The dequeued cell is not an instance of ChillAlbumTableViewCell.")
        }
        
        // Fetches the appropriate album for the data source layout.
        let album = albums[indexPath.row]

        cell.chillAlbumCoverImageVIew.image = album.albumCover
        cell.chillAlbumNameLabel.text = album.albumName
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    // Deselect Row when clicked
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK: Private Methods
    
    private func loadSampleAlbums() {
        
        let albumList: AlbumList = AlbumList.init()
        
        for index in 0..<albumList.chill.count {
            
            albums += [albumList.chill[index]]
        }
        
    }

}
