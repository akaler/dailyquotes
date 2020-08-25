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
        var dict = ["socrates": false, "aristotle" : false, "plato": false, "kant" : false]
        defaults.set(25, forKey: "Age")
        defaults.set( dict, forKey: "dict")
    }

    @IBAction func socButtonPressed(_ sender: UIButton) {
        print("socpressed")
        if sender.isSelected{
                sender.isSelected = false
           // print("if sender.isselectd (true) ")
            
            }
            else {
            //print("sender.isSelcted (false)")
                sender.isSelected = true
           // let age = self.defaults(forKey: "Age")
            print("age: \(age)")
            //sender.fadeOut()
            //sender.fadeOut()
            //sender.fadeIn()
            //sender.fadeOut()
            
            }
    }

    @IBAction func aristotleButtonPressed(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
        }
        else {
            sender.isSelected = true
        }
    }
    
    @IBAction func platoButtonPressed(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
        }
        else {
            sender.isSelected = true
        }
    }

    @IBAction func kantButtonPressed(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
        }
        else {
            sender.isSelected = true
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
