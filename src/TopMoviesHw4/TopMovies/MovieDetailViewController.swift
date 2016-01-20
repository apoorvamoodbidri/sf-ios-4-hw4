//
//  MovieDetailViewController.swift
//  TopMovies
//
//  Created by Apoorva Moodbidri on 1/20/16.
//  Copyright © 2016 GA Student. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    var titleString:String?
    var directorString:String?
    var descriptionString:String?
    var moviePosterURL:NSURL?

    @IBOutlet weak var titleLabel: UILabel!
   
    
    @IBOutlet weak var directorLabel: UILabel!

    
    @IBOutlet weak var summaryLabel: UILabel!
    
  
    @IBOutlet weak var posterImageView: UIImageView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel!.text = titleString
        directorLabel!.text = directorString
        summaryLabel!.text = descriptionString
        posterImageView!.setImageWithURL(moviePosterURL!)
        
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
