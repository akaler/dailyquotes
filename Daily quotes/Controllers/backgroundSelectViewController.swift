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
    
    @IBOutlet weak var s1Button: UIButton!
    
    @IBOutlet weak var s2Button: UIButton!
    @IBOutlet weak var s3Button: UIButton!
    @IBOutlet weak var s4Button: UIButton!
    @IBOutlet weak var s5Button: UIButton!
    @IBOutlet weak var s6Button: UIButton!
    @IBOutlet weak var s7Button: UIButton!
    @IBOutlet weak var s8Button: UIButton!
    @IBOutlet weak var s9Button: UIButton!
    @IBOutlet weak var s10Button: UIButton!
    @IBOutlet weak var s11Button: UIButton!
    @IBOutlet weak var s12Button: UIButton!
    @IBOutlet weak var s13Button: UIButton!
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var s14Button: UIButton!
    @IBOutlet weak var s15Button: UIButton!
    @IBOutlet weak var s16Button: UIButton!
    @IBOutlet weak var s17Button: UIButton!
    @IBOutlet weak var s18Button: UIButton!
    @IBOutlet weak var s19Button: UIButton!
    @IBOutlet weak var s20Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        opacitySlider.value = Float(UserDefaults.standard.double(forKey: "alpha"))
    
    opacityValueLabel.text = String(Int(opacitySlider.value * 100))

        // Do any additional setup after loading the view.
    
    let background_dict = UserDefaults.standard.dictionary(forKey: "background_dict" )!
    for (image_name, boolean) in background_dict {
        if boolean as! Bool == true
        {
            switch image_name
                
            {
                case "s1":
                    s1Button.sendActions(for: .touchUpInside)
                case "s2":
                    s2Button.sendActions(for: .touchUpInside)
                case"s3":
                    s3Button.sendActions(for: .touchUpInside)
                case "s4":
                    s4Button.sendActions(for: .touchUpInside)
                case "s5":
                    s5Button.sendActions(for: .touchUpInside)
                case "s6":
                    s6Button.sendActions(for: .touchUpInside)
                case "s7":
                    s7Button.sendActions(for: .touchUpInside)
                case "s8":
                    s8Button.sendActions(for: .touchUpInside)
                case "s9":
                    s9Button.sendActions(for: .touchUpInside)
                case "s10":
                    s10Button.sendActions(for: .touchUpInside)
                case "s11":
                    s11Button.sendActions(for: .touchUpInside)
                case "s12":
                    s12Button.sendActions(for: .touchUpInside)
                case "s13":
                    s13Button.sendActions(for: .touchUpInside)
                case "s14":
                    s14Button.sendActions(for: .touchUpInside)
                case "s15":
                    s15Button.sendActions(for: .touchUpInside)
                case "s16":
                    s16Button.sendActions(for: .touchUpInside)
                case "s17":
                    s17Button.sendActions(for: .touchUpInside)
                case "s18":
                    s18Button.sendActions(for: .touchUpInside)
                case "s19":
                    s19Button.sendActions(for: .touchUpInside)
                case "s20":
                    s20Button.sendActions(for: .touchUpInside)
                //shopenhaur
                default:
                    print("there was nothing to select ")
                
            }
        }
    }
    
    }
    
    @IBAction func opacitySliderSlided(_ sender: UISlider) {
        opacityValueLabel.text = String(Int(sender.value * 100))
        UserDefaults.standard.set(sender.value, forKey: "alpha")
    }
    
    @IBAction func s1Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s1")
    }
    
    @IBAction func s2Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s2")
    }
    
    @IBAction func s3Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s3")
    }
    
    @IBAction func s4Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s4")
    }
    
    @IBAction func s5Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s5")
    }
    
    @IBAction func s6Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s6")
    }
    
    @IBAction func s7Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s7")
    }
    
    @IBAction func s8Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s8")
    }
    
    @IBAction func s9Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s9")
    }
    
    @IBAction func s10Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s10")
    }
    
    @IBAction func s11Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s11")
    }
    
    @IBAction func s12Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s12")
    }
    
    @IBAction func s13Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s13")
    }
    
    @IBAction func s14Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s14")
    }
    
    @IBAction func s15Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s15")
    }
    
    @IBAction func s16Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s16")
    }
    
    @IBAction func s17Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s17")
    }
    
    @IBAction func s18Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s18")
    }
    
    @IBAction func s19Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s19")
    }
    
    @IBAction func s20Pressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, img_name: "s20")
    }
    
    
    
    
    private func button_logic(sender_arg: UIButton, img_name: String)
    {
        if sender_arg.isSelected{
            sender_arg.isSelected = false
            var rr  = UserDefaults.standard.dictionary(forKey: "background_dict")
            rr?[img_name] = false
            UserDefaults.standard.set(rr, forKey: "background_dict")
        
        }
            
        else {
            sender_arg.isSelected = true
            var rr  = UserDefaults.standard.dictionary(forKey: "background_dict")
            rr?[img_name] = true
            UserDefaults.standard.set(rr, forKey: "background_dict")
        }
    }
    @IBAction func selectAllButtonPressed(_ sender: Any) {
        let p_dict = UserDefaults.standard.dictionary(forKey:"background_dict")!
            //print(user_selected_phil_dictionary["plato"])
        if (p_dict["s1"] as! Bool == false)  {s1Button.sendActions(for: .touchUpInside)}
        if (p_dict["s2"] as! Bool == false)  {s2Button.sendActions(for: .touchUpInside)}
        if (p_dict["s3"] as! Bool == false)  {s3Button.sendActions(for: .touchUpInside)}
        if (p_dict["s4"] as! Bool == false)  {s4Button.sendActions(for: .touchUpInside)}
        if (p_dict["s5"] as! Bool == false)  {s5Button.sendActions(for: .touchUpInside)}
        if (p_dict["s6"] as! Bool == false)  {s6Button.sendActions(for: .touchUpInside)}
        if (p_dict["s7"] as! Bool == false)  {s7Button.sendActions(for: .touchUpInside)}
        if (p_dict["s8"] as! Bool == false)  {s8Button.sendActions(for: .touchUpInside)}
        if (p_dict["s9"] as! Bool == false)  {s9Button.sendActions(for: .touchUpInside)}
        if (p_dict["s10"] as! Bool == false){s10Button.sendActions(for: .touchUpInside)}
        if (p_dict["s11"] as! Bool == false){s11Button.sendActions(for: .touchUpInside)}
        if (p_dict["s12"] as! Bool == false){s12Button.sendActions(for: .touchUpInside)}
        if (p_dict["s13"] as! Bool == false){s13Button.sendActions(for: .touchUpInside)}
        if (p_dict["s14"] as! Bool == false){s14Button.sendActions(for: .touchUpInside)}
        if (p_dict["s15"] as! Bool == false){s15Button.sendActions(for: .touchUpInside)}
        if (p_dict["s16"] as! Bool == false){s16Button.sendActions(for: .touchUpInside)}
        if (p_dict["s17"] as! Bool == false){s17Button.sendActions(for: .touchUpInside)}
        if (p_dict["s18"] as! Bool == false){s18Button.sendActions(for: .touchUpInside)}
        if (p_dict["s19"] as! Bool == false){s19Button.sendActions(for: .touchUpInside)}
        if (p_dict["s20"] as! Bool == false){s20Button.sendActions(for: .touchUpInside)}
        
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
