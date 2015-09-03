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
    var multiple: Int = 0
    var newNum: Int = 0
    var total: Int = 0
    
    
    // Outlets
    @IBOutlet weak var multiplesLogo: UIImageView!
    @IBOutlet weak var multiplesText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var quitButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    // Actions
    @IBAction func onPlayBtnPress(sender: UIButton) {
        multiplesLogo.hidden = true
        multiplesText.hidden = true
        playButton.hidden = true
        
        outputLabel.hidden = false
        addButton.hidden = false
        quitButton.hidden = false
        
        errorLabel.hidden = true
        
        getMultiple()
        updateLabel()
        
    }
    
    @IBAction func onAddBtnPress(sender: UIButton) {
        multiplesLogic()
        updateLabel()
        
        if hasGameEnded() {
            restartGame()
        }
    }
    
    @IBAction func onQuitBtnPressed(sender: UIButton) {
        restartGame()
    }
    
    // Functions
    func getMultiple() {
        if let getMultiple = Int(multiplesText.text!) {
            if validateInput(getMultiple) {
                multiple = getMultiple
            } else {
                errorLabel.text = "Please enter a number between 1 and 10"
                showError()
            }
        }
    }
    
    func validateInput(gottenMultiple: Int) -> Bool {
        if gottenMultiple > 0 && gottenMultiple < 10 && multiplesText.text != "" {
            return true
        } else {
            return false
        }
        
    }
    
    func updateLabel() {
        outputLabel.text = "\(newNum) + \(multiple) = \(total)"
    }
    
    func multiplesLogic() {
        newNum += multiple
        total = newNum
    }
    
    func hasGameEnded() -> Bool {
        if total >= 50 {
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        multiplesLogo.hidden = false
        multiplesText.hidden = false
        playButton.hidden = false
        
        outputLabel.hidden = true
        addButton.hidden = true
        quitButton.hidden = true
        
        errorLabel.hidden = true
        
        newNum = 0
        total = 0
    }
    
    func showError(){
        multiplesLogo.hidden = false
        multiplesText.hidden = false
        playButton.hidden = false
    
        outputLabel.hidden = true
        addButton.hidden = true
        quitButton.hidden = true
    
        errorLabel.hidden = false
    }

}

