//
//  ViewController.swift
//  WeekOne
//
//  Created by Christopher Greene on 1/13/20.
//  Copyright © 2020 Christopher Greene. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalImages = 9
    var totalNumberSounds = 2
    var soundNumber = -1
    var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error)could not initialize AVAudioPlayer object 🤬")
            }
            
        } else {
            print("ERROR: could not read data 🤬")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }

    @IBAction func sayItPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome",
                        "You Are Great",
                        "You Are Fantastic",
                        "You Are A Genius",
                        "You've Got the Design Skills of Jony Ive",
                        "You Are Fabulous"]
        
      
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
     
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber  = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberSounds-1)
        playSound(name: "sound\(soundNumber)")
        
        
//        messageLabel.text = messages[messageNumber]
//        messageNumber += 1
//
//        if messageNumber == messages.count {
//            messageNumber = 0
//        }
//
//        let imageName = "image\(imageNumber)"
//        imageView.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10 {
//            imageNumber = 0
//        }
//        let awesomeMessage = "You Are Awesome!"
//        let greatMessage = "You Are Great!"
//        let bombMessage = "You Are Da Bomb!"
//
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//        } else if messageLabel.text == greatMessage {
//            messageLabel.text = bombMessage
//            imageView.image = UIImage(named: "image2")
//        } else {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0")
//        }
        
    }
}
