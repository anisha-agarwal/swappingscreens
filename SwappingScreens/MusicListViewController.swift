//
//  MusicListViewController.swift
//  SwappingScreens
//
//  Created by Agarwal,Anisha on 10/15/16.
//  Copyright © 2016 Agarwal,Anisha. All rights reserved.
//

import UIKit

class MusicListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScreenBtnPressed(_ sender: AnyObject) {
        let songTitle = "Test Song Title"
        performSegue(withIdentifier: "PlaySongViewController", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongViewController {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
    
}
