//
//  RoundButton.swift
//  Daily quotes
//
//  Created by Abhijot Kaler on 03/09/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit
@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0{
            didSet{
            self.layer.cornerRadius = cornerRadius
            }
        }

        @IBInspectable var borderWidth: CGFloat = 0{
            didSet{
                self.layer.borderWidth = borderWidth
            }
        }

        @IBInspectable var borderColor: UIColor = UIColor.clear{
            didSet{
                self.layer.borderColor = borderColor.cgColor
            }
        }
    }
