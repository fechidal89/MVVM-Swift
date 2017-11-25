//
//  ViewController.swift
//  searchmovies
//
//  Created by Fernando C. Hidalgo C. on 11/23/17.
//  Copyright © 2017 Fernando C. Hidalgo C. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //MARK: properties
   
    
    //MARK: methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("HomeViewController viewDidLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    
    @IBAction func onPopularButtonClicked(_ sender: Any) {
        NSLog("show popular")
    }
    
    @IBAction func onTopRatedButtonClicked(_ sender: Any) {
        NSLog("show top rated")
    }
    
    @IBAction func onUpcomingButtonClicked(_ sender: Any) {
        NSLog("show upcoming")
    }
}

