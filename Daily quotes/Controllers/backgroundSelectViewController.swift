//
//  backgroundSelectViewController.swift
//  Daily Quotes
//
//  Created by Abhijot Kaler on 24/09/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit

class backgroundSelectViewController: UIViewController {

    @IBOutlet weak var opacityValueLabel: UILabel!
    @IBOutlet weak var opactiySlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func opacitySliderSlided(_ sender: UISlider) {
        opacityValueLabel.text = String(Int(sender.value * 100))
        UserDefaults.standard.set(sender.value, forKey: "alpha")
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
