//
//  ViewController.swift
//  MadLibs
//
//  Created by Noel Mendoza on 1/17/18.
//  Copyright © 2018 jon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AddItemsViewControllerDelegate {
    
    @IBOutlet var dumbStringLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let mySegue = segue.destination as? AddItemsViewController
        mySegue?.delegate = self
    }
    
    func addWords(adjective: String, verb1: String, verb2: String, noun: String) {
        
        var madString = ""
        
        if adjective == "" || verb1 == "" || verb2 == "" || noun == "" {
            madString = "Please fill in all fields homie"
            dumbStringLabel.textColor = UIColor.red
            
        }
        else {
            madString = "We are having a perfectly \(adjective) time now. Later, we will \(verb1) and \(verb2) in the \(noun)."
        }
        
        dumbStringLabel.text = madString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){}
}

