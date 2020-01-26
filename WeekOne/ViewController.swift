//
//  ViewController.swift
//  WeekOne
//
//  Created by Christopher Greene on 1/13/20.
//  Copyright © 2020 Christopher Greene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalImages = 9
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sayItPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome",
                        "You Are Great",
                        "You Are Fantastic",
                        "You Are A Genius",
                        "You've Got the Design Skills of Jony Ive",
                        "You Are Fabulous"]
        
        var newMessageNumber: Int
        repeat {
            print("*** We had a repeating value of \(messageLabel.text!)")
            newMessageNumber = Int.random(in: 0...messages.count - 1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
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
