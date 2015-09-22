//
//  ViewController.swift
//  Greeting App
//
//  Created by Chris Archibald on 9/21/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressMeButtonPressed(sender: AnyObject) {
        
        var calendar = NSCalendar.currentCalendar()
        var timeDateComponents = calendar.components(NSCalendarUnit.HourCalendarUnit |
            NSCalendarUnit.MinuteCalendarUnit | NSCalendarUnit.SecondCalendarUnit, fromDate: NSDate())
        
        var hour = timeDateComponents.hour
        var name = "Chris"
        
        if hour >= 8 && hour < 12 {
            greetingLabel.text = "Good morning \(name)"
        } else if hour >= 12 && hour < 18 {
            greetingLabel.text = "Good afternoon \(name)"
        } else if hour >= 18 && hour < 22 {
            greetingLabel.text = "Good Evening \(name)"
        } else {
            greetingLabel.text = "WTF dude \(name)"
        }
    }

}

