//
//  ViewController.swift
//  test ui change
//
//  Created by Dennis Wassenberg, van den on 14/03/16.
//  Copyright © 2016 Dennis Wassenberg, van den. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func redButtonPressed(sender: AnyObject) {
        changeBarColor("red")
    }
    
    @IBAction func blueButtonPressed(sender: AnyObject) {
        changeBarColor("blue")
    }
    
    @IBAction func greenButtonPressed(sender: AnyObject) {
        changeBarColor("green")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeBarColor("white")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal func changeBarColor(color: String) {
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if (color == "red" || defaults.stringForKey("themeColor") == "red") {
            let navBarColor = navigationController!.navigationBar
            let tabBarColour = tabBarController!.tabBar
            let colour = UIColor(red:  255/255.0, green: 0/255.0, blue: 0/255.0, alpha: 100.0/100.0)
            
            navBarColor.barTintColor = colour
            navBarColor.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
            
            tabBarColour.barTintColor = colour
            tabBarColour.tintColor = UIColor.whiteColor()
        }
        else if (color == "blue" || defaults.stringForKey("themeColor") == "blue") {
            let navBarColor = navigationController!.navigationBar
            let tabBarColour = tabBarController!.tabBar
            let colour = UIColor(red:  0/255.0, green: 0/255.0, blue: 255/255.0, alpha: 100.0/100.0)
            
            navBarColor.barTintColor = colour
            navBarColor.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
            
            tabBarColour.barTintColor = colour
            tabBarColour.tintColor = UIColor.whiteColor()
        }
        else if (color == "green" || defaults.stringForKey("themeColor") == "green") {
            let navBarColor = navigationController!.navigationBar
            let tabBarColour = tabBarController!.tabBar
            let colour = UIColor(red:  0/255.0, green: 255/255.0, blue: 0/255.0, alpha: 100.0/100.0)
            
            navBarColor.barTintColor = colour
            navBarColor.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
            
            tabBarColour.barTintColor = colour
            tabBarColour.tintColor = UIColor.whiteColor()
        }
        
        defaults.setObject(color, forKey: "themeColor")
        
//        let alertController = UIAlertController(title: "test", message:
//            defaults.stringForKey("themeColor"), preferredStyle: UIAlertControllerStyle.Alert)
//        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
//        
//        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

