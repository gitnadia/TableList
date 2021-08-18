//
//  DetailedMusicViewController.swift
//  TableList
//
//  Created by nadezda.gura
//

import UIKit

class DetailedMusicViewController: UIViewController {
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    var song:Song!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if song != nil{
            trackImageView.image = UIImage(named: song.cover)
            trackNameLabel.text = song.track + " " + song.album
            trackNameLabel.numberOfLines = 0
        }
    }
    
}
