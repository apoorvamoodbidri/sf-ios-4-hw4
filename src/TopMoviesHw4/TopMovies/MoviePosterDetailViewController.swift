//
//  MoviePosterDetailViewController.swift
//  TopMovies
//
//  Created by Apoorva Moodbidri on 1/20/16.
//  Copyright © 2016 GA Student. All rights reserved.
//

import UIKit

class MoviePosterDetailViewController: UIViewController,UIScrollViewDelegate {
    var moviePosterURL:NSURL?
    
    
    
    @IBOutlet weak var moviePosterScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let imageView = UIImageView()
        imageView.setImageWithURL(moviePosterURL!)
        imageView.frame = view.frame

        // Do any additional setup after loading the view.
        
        self.moviePosterScrollView.addSubview(imageView)
        
        self.moviePosterScrollView.contentSize = view.frame.size
        
        self.moviePosterScrollView.maximumZoomScale = 3.0
        
        self.moviePosterScrollView.minimumZoomScale = 0.1
        
        self.moviePosterScrollView.delegate = self
    }
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return scrollView.subviews.first
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
