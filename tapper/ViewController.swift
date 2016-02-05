//
//  ViewController.swift
//  tapper
//
//  Created by Evan Laird on 2/4/16.
//  Copyright © 2016 Evan Laird. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    //properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var coinButton: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!){
        currentTaps++
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
    }
    }
    
    
 
    @IBAction func onPlayButtonPressed(sender: UIButton) {
    
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playButton.hidden = true
            
            coinButton.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
    }
    
        func restartGame() {
            maxTaps = 0
            howManyTapsTxt.text = ""
            
            logoImg.hidden = false
            playButton.hidden = false
            howManyTapsTxt.hidden = false
            
            coinButton.hidden = true
            tapsLbl.hidden = true
            
        }
        
    
    func isGameOver() ->Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }

    func updateTapsLbl(){
        tapsLbl.text = "\(currentTaps) Taps"
    }
}







