//
//  MovieTableViewController.swift
//  TableList
//
//  Created by nadezda.gura
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var movies = Movie.createMovie()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell()}
        
        //      cell.movieLabel.text = "Jurassic Park 1"
        //      cell.movieImageView.image = UIImage(named: "jp.jpg")
        
        let movie = movies[indexPath.row]
        cell.movieImageView.image = UIImage(named: movie.coverMovie)
        cell.movieLabel.text = movie.movieTitle
        cell.directorLabel.text = movie.director
        cell.yearLabel.text = movie.year
        
        //cell.textLabel?.text = movie.movieTitle
        //cell.detailTextLabel?.text = movie.coverMovie
        //cell.detailTextLabel?.text = movie.director
        //cell.imageView?.image = UIImage(named: movie.coverMovie)
        
        return cell
    }
    
    //MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentmovie = movies.remove(at: fromIndexPath.row)
        movies.insert(currentmovie, at: to.row)
        
        
    }
    
    
    
    
    
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            // Get the new view controller using segue.destination.
            print(indexPath)
            let detailMovieVC = segue.destination as! DetailedMovieViewController
            //        let detailMovieVC = segue.destination as! MovieTableViewCell
            // Pass the selected object to the new view controller.
            detailMovieVC.movie = movies[indexPath.row]
        }
        
    }
    
}
