//
//  testViewController.swift
//  Daily quotes
//
//  Created by Abhijot Kaler on 24/08/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit

class testViewController: UIViewController {

    @IBOutlet weak var testButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func testButtonPressed(_ sender: UIButton) {
        print("printing dicitonary from another uiview controller")
        print(UserDefaults.standard.dictionary(forKey: "dict")!)
        if sender.isSelected{
            sender.isSelected = false
        }
        else{
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
