//
//  RockGenreTableViewController.swift
//  Rehersal Tracks
//
//  Created by Chris Marrow on 22/3/18.
//  Copyright © 2018 Chris Marrow. All rights reserved.
//

import UIKit

class RockGenreTableViewController: UITableViewController {
    
    
    //    Dictionary containing all the rock tracks, calls on the RockTrackList class for the info.
    
    var rockTrackList: [RockTrackList] = [
        RockTrackList(name: "Track 1 in C Major"),
        RockTrackList(name: "Track 1 in D Major")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //        Pulls the information from the rockTrackList dictionary. If no tracks the rows will be blank
        
        if section == 0 {
            return rockTrackList.count
            
        } else {
            
            return 0
        }
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RockCell", for: indexPath)
        
        //      Inserts the rockTrackList information into each row
        
        let List = rockTrackList[indexPath.row]
        
        cell.textLabel?.text =  "\(List.name)"
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let segueIdentifier: String
        switch indexPath.row {
        case 0: //For "one"
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let rockCMajTabBarController = storyboard.instantiateViewController(withIdentifier: "RockCMajTabBarController") as! UITabBarController
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.window?.rootViewController = rockCMajTabBarController
            
        case 1: //For "two"
            segueIdentifier = "PlayerVC"
        default: //For "three"
            segueIdentifier = "showView3"
        }
        
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

