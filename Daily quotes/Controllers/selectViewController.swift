//
//  selectViewController.swift
//  Daily quotes
//
//  Created by Abhijot Kaler on 24/08/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit

class selectViewController: UIViewController {
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dict : [String : Bool] = ["socrates": false, "aristotle" : false, "plato": false, "kant" : false, "suntzu": false, "heraclitus": true]
        defaults.set(25, forKey: "Age")
        defaults.set( dict, forKey: "dict")
    }

    @IBAction func nextButtonPressed(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "saved")
    }
    @IBAction func testButtonPressed(_ sender: Any) {
        print(UserDefaults.standard.dictionary(forKey:"dict")!)
    }
    @IBAction func socButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "socrates")
    }

    @IBAction func aristotleButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "aristotle")
    }
    
    @IBAction func platoButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "plato")
    }

    @IBAction func kantButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "kant")
    }
    
    @IBAction func suntzuButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "suntzu")
    }
    @IBAction func heraclitusButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "heraclitus")
    }
    fileprivate func button_logic(sender_arg : UIButton, phil_name: String)
    {
        if sender_arg.isSelected{
            sender_arg.isSelected = false
            var rr  = UserDefaults.standard.dictionary(forKey: "dict")
            rr?[phil_name] = false
            UserDefaults.standard.set(rr, forKey: "dict")
        }
        else {
            sender_arg.isSelected = true
            var rr  = UserDefaults.standard.dictionary(forKey: "dict")
            rr?[phil_name] = true
            UserDefaults.standard.set(rr, forKey: "dict")
        }
    }
}
