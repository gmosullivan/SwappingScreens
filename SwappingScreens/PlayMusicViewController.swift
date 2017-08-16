//
//  PlayMusicViewController.swift
//  SwappingScreens
//
//  Created by Gareth O'Sullivan on 16/08/2017.
//  Copyright © 2017 Locust Redemption. All rights reserved.
//

import UIKit

class PlayMusicViewController: UIViewController {

    @IBOutlet weak var songTitleLabel: UILabel!
    private var _selectedSong:String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitleLabel.text = _selectedSong
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
