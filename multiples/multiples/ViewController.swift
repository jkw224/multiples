//
//  ViewController.swift
//  multiples
//
//  Created by Jonathan Wood on 9/3/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    
    
    
    // Outlets
    @IBOutlet weak var multiplesLogo: UIImageView!
    @IBOutlet weak var multiplesText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    
    // Actions
    @IBAction func playMultiples(sender: UIButton) {
        multiplesLogo.hidden = true
        multiplesText.hidden = true
        playButton.hidden = true
        
        outputLabel.hidden = false
        addButton.hidden = false
    }
    
    @IBAction func addMultiples(sender: UIButton) {
        
    }
    
    
    // Functions


}

