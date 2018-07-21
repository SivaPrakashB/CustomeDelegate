//
//  ViewController.swift
//  CustomeDelegate
//
//  Created by Apple on 25/06/18.
//  Copyright © 2018 senovTech. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,CustomeDeleGate {
    func TextDidEntered(name: String) {
         name1.text=name
    }
    
   
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var name1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="abc"
        {
            var sc=segue.destination as! SecondViewController
            sc.delegate=self
        }
    }

    
    @IBAction func saveData(_ sender: UIButton) {
       
    }
    
    
    
}

