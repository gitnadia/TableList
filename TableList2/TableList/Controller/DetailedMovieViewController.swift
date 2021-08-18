//
//  DetailedMovieViewController.swift
//  TableList
//
//  Created by nadezda.gura

import UIKit

class DetailedMovieViewController: UIViewController {
    
    @IBOutlet weak var trackMovieView: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    
    var movie:Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if movie != nil {
            trackMovieView.image = UIImage(named: movie.coverMovie)
            movieLabel.text = movie.movieTitle + " - " + movie.year + " - directed by " + movie.director
            movieLabel.numberOfLines = 3
        }
    }
}
