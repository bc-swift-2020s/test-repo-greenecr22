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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = "The app has loaded!"
        // Do any additional setup after loading the view.
    }

    @IBAction func sayItPressed(_ sender: UIButton) {
        messageLabel.text = "I'm Rockin' Swift"
        print("The message button was pressed")
    }
    
}
