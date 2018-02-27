//
//  AddItemsViewController.swift
//  MadLibs
//
//  Created by Noel Mendoza on 1/17/18.
//  Copyright © 2018 jon. All rights reserved.
//

import UIKit

class AddItemsViewController: UIViewController {

    var delegate: AddItemsViewControllerDelegate?
    
//    var adj: String?
//    var ver1: String?
//    var ver2: String?
//    var nou: String?
    
    @IBOutlet var adjTextField: UITextField!
    @IBOutlet var verb1TextField: UITextField!
    @IBOutlet var verb2TextField: UITextField!
    @IBOutlet var nounTextField: UITextField!
    
    @IBAction func submitButtonIsPressed(_ sender: UIButton) {
        
        delegate?.addWords(adjective: adjTextField.text!, verb1: verb1TextField.text!, verb2: verb2TextField.text!, noun: nounTextField.text!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
