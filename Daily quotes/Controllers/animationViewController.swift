//
//  animationViewController.swift
//  Daily quotes
//
//  Created by Abhijot Kaler on 16/09/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit

class animationViewController: UIViewController {

    @IBOutlet weak var schoolImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        schoolImage.alpha = 0.5
        // Do any additional setup after loading the view.
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
