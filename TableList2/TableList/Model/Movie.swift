//
//  Movie.swift
//  TableList
//
//  Created by nadezda.gura
//

import Foundation

struct Movie {
    let movieTitle: String
    let year: String
    let coverMovie: String
    let director: String
    
    static func createMovie() -> [Movie]{
        var movies: [Movie] = []
        
        let movieTitles = DataManager.shared.movieTitle
        let years = DataManager.shared.year
        let coverMovies = DataManager.shared.coverMovie
        let directors = DataManager.shared.director
        
        for index in 0..<movieTitles.count{
            let movie = Movie(movieTitle: movieTitles[index],year: years[index], coverMovie: coverMovies[index], director: directors[index])
            movies.append(movie)
            
        }
        
        return movies
    }
}

