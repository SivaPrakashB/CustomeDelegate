//
//  SecondViewController.swift
//  CustomeDelegate
//
//  Created by Apple on 25/06/18.
//  Copyright © 2018 senovTech. All rights reserved.
//

import UIKit
protocol CustomeDeleGate {
    func TextDidEntered(name:String)
    ///rockStar
}
class SecondViewController: UIViewController {

    @IBOutlet weak var textFieldFortext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var delegate:CustomeDeleGate?=nil
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func done(_ sender: UIButton) {
        if delegate != nil{
            delegate?.TextDidEntered(name: textFieldFortext.text!)
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    
   

}
