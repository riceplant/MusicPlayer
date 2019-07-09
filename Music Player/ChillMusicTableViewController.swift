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
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
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
