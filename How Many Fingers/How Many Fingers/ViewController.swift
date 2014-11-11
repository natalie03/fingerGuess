//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Natalie Miller on 11/10/14.
//  Copyright (c) 2014 Natalie Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guess: UITextField!
    
    @IBOutlet var message: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        var numberOfFingers = arc4random() % 11
        println(numberOfFingers)
        
        var numberOfFingersString = String(numberOfFingers)
        if(numberOfFingersString == guess.text){
        message.text = "Way to go! You are right!"
        } else{
        
        message.text = "Sorry, the correct answer was \(numberOfFingersString)."}
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

