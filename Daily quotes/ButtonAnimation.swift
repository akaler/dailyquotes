//
//  ButtonAnimation.swift
//  Daily quotes
//
//  Created by Abhijot Kaler on 25/08/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {

    func pulsate() {
        
        let pulse = CABasicAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = false
        pulse.repeatCount = 1
        //pulse.initialVelocity = 0.5
        //pulse.damping = 1.0
        
        layer.add(pulse, forKey: "pulse")
    }
    /*
    func fadeIn() {
             // Move our fade out code from earlier
        UIView.animate(withDuration: 1.0, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
                 self.alpha = 1.0 // Instead of a specific instance of, say, birdTypeLabel, we simply set [thisInstance] (ie, self)'s alpha
                 }, completion: nil)
        }
    
        func fadeOut() {
            UIView.animate(withDuration: 1.0, delay: 0.0, options: UIView.AnimationOptions.curveEaseOut, animations: {
                //self.alpha = 0.0
                }, completion: nil)
        }
    */

}
