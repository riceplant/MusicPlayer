//
//  AlbumTableViewController.swift
//  Music Player
//
//  Created by Binh Phan on 04.07.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit

class AlbumTableViewController: UITableViewController {

    // MARK: Properties
    
    var albums = [Album]()
    
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
        
        let cellIdentifier = "AlbumTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier , for: indexPath) as? AlbumTableViewCell else {
            fatalError("The dequeued cell is not an instance of AlbumTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let album = albums[indexPath.row]
        
        cell.albumCoverImageView.image = album.albumCover
        cell.albumNameLabel.text = album.albumName
        
        return cell
    }
    
    // Deselect Row when clicked
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: Private Methods
    
    private func loadSampleAlbums() {
        
        let cover1 = UIImage(named: "tropical_beats")
        let cover2 = UIImage(named: "summer_chill")
        let cover3 = UIImage(named: "vibe_guide")
        
        guard let album1 = Album(cover: cover1, name: "Tropical Beats") else {
            fatalError("Unable to instantiate album1")
        }
        
        guard let album2 = Album(cover: cover2, name: "Summer Chill") else {
            fatalError("Unable to instantiate album2")
        }
        
        guard let album3 = Album(cover: cover3, name: "Vibe Guide") else {
            fatalError("Unable to instantiate album3")
        }
        
        albums += [album1, album2, album3]
    }

}
