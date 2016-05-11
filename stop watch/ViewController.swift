//
//  ViewController.swift
//  stop watch
//
//  Created by Jamie Rose on 10/05/2016.
//  Copyright © 2016 Jamie Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var count = 0
    
    func result() {
        count += 1
        timeDisplay.text = "/(count)"
    }
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.result), userInfo: nil, repeats: true)
        
    }
    @IBAction func pause(sender: AnyObject) {
    }

    @IBOutlet weak var timeDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

