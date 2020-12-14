//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
// import audio bundle
import AVFoundation

class ViewController: UIViewController {
    // init audio player
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // function for when a button is pressed
    @IBAction func keyPressed(_ sender: UIButton) {
        
        //Reduces the sender's (the button that got pressed) opacity to half.
         sender.alpha = 0.5
        
        // call play sound function with the title of button
        // pressed
        playSound(soundName: sender.currentTitle!)
        
        //Code should execute after 0.2 second delay.
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
          }
    }
    // function that takes string and plays the correct sounds
    // matching the string "soundName"
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
