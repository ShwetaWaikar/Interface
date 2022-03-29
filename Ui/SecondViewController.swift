//
//  SecondViewController.swift
//  Ui
//
//  Created by Shweta on 29/03/22.
//  Copyright © 2022 Shweta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var textfield: UITextField!
    
    @IBAction func additem(sender: AnyObject) {
        todolist.append(textfield.text!)
        textfield.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(todolist, forKey: "list")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textfield.resignFirstResponder()
        return true
    }
    
    
}
