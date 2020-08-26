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
        // Do any additional setup after loading the view.
        //let defaults = UserDefaults.standard
        let dict : [String : Bool] = ["socrates": false, "aristotle" : false, "plato": false, "kant" : false]
        defaults.set(25, forKey: "Age")
        defaults.set( dict, forKey: "dict")
    }

    @IBAction func testButtonPressed(_ sender: Any) {
        print(UserDefaults.standard.dictionary(forKey:"dict")!)
    }
    @IBAction func socButtonPressed(_ sender: UIButton) {
        //let defaults = UserDefaults.standard
        //print("socpressed")
        if sender.isSelected{
                sender.isSelected = false
            //updating dictionary
            var rr  = UserDefaults.standard.dictionary(forKey: "dict")
            rr?["socrates"] = false
            UserDefaults.standard.set(rr, forKey: "dict")
            
            }
            else {
                sender.isSelected = true
            //updating dictionary
            var rr  = UserDefaults.standard.dictionary(forKey: "dict")
            rr?["socrates"] = true
            UserDefaults.standard.set(rr, forKey: "dict")
            
           // print(UserDefaults.standard.dictionary(forKey:"dict")!)
            
            //defaults.dictionary(forKey: "dict").updateValue(true, forKey: "socrates")
            //print("the dict: \(defaults.dictionary(forKey: "dict"))")
            
           // let age = self.defaults(forKey: "Age")
           // print("age: \(age)")
            //sender.fadeOut()
            //sender.fadeOut()
            //sender.fadeIn()
            //sender.fadeOut()
            
            }
    }

    @IBAction func aristotleButtonPressed(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
            //removing aristotle from dictionary
            var rr  = UserDefaults.standard.dictionary(forKey: "dict")
            rr?["aristotle"] = false
            UserDefaults.standard.set(rr, forKey: "dict")
        }
        else {
            sender.isSelected = true
            //adding aristotle to dictionary
            var rr  = UserDefaults.standard.dictionary(forKey: "dict")
            rr?["aristotle"] = true
            UserDefaults.standard.set(rr, forKey: "dict")
        }
    }
    
    @IBAction func platoButtonPressed(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
            var rr  = UserDefaults.standard.dictionary(forKey: "dict")
            rr?["plato"] = false
            UserDefaults.standard.set(rr, forKey: "dict")
        }
        else {
            sender.isSelected = true
            var rr  = UserDefaults.standard.dictionary(forKey: "dict")
            rr?["plato"] = true
            UserDefaults.standard.set(rr, forKey: "dict")
        }
    }

    @IBAction func kantButtonPressed(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
            var rr  = UserDefaults.standard.dictionary(forKey: "dict")
            rr?["kant"] = false
            UserDefaults.standard.set(rr, forKey: "dict")
        }
        else {
            sender.isSelected = true
            var rr  = UserDefaults.standard.dictionary(forKey: "dict")
            rr?["kant"] = true
            UserDefaults.standard.set(rr, forKey: "dict")
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
