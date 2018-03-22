//
//  ViewController.swift
//  Rehersal Tracks
//
//  Created by Chris Marrow on 22/3/18.
//  Copyright © 2018 Chris Marrow. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func genresButtonPressed(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let genresViewController = storyboard.instantiateViewController(withIdentifier: "GenresVC")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = genresViewController
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
}
