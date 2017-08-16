//
//  MusicListViewController.swift
//  SwappingScreens
//
//  Created by Gareth O'Sullivan on 16/08/2017.
//  Copyright © 2017 Locust Redemption. All rights reserved.
//

import UIKit

class MusicListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
    }

    @IBAction func backButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loadMusic(_ sender: AnyObject) {
        let songTitle = "Quit Playing Games With My Heart"
        performSegue(withIdentifier: "PlayMusicVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlayMusicViewController {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
