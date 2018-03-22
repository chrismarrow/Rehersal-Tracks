//
//  GenresViewController.swift
//  Rehersal Tracks
//
//  Created by Chris Marrow on 22/3/18.
//  Copyright © 2018 Chris Marrow. All rights reserved.
//

import UIKit

class GenresViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func RockGenreButtonPressed(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rockGenreTableViewController = storyboard.instantiateViewController(withIdentifier: "RockGenresTV") as! RockGenreTableViewController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = rockGenreTableViewController
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    
}
