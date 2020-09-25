//
//  selectViewController.swift
//  Daily quotes
//
//  Created by Abhijot Kaler on 24/08/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit

class selectViewController: UIViewController {
    @IBOutlet weak var heraclitusButton: UIButton!
    
    @IBOutlet weak var suntzuButton: UIButton!
    @IBOutlet weak var socratesButton: UIButton!
    @IBOutlet weak var platoButton: UIButton!
    @IBOutlet weak var aristotleButton: UIButton!
    @IBOutlet weak var senecaButton: UIButton!
    @IBOutlet weak var epictetusButton: UIButton!
    @IBOutlet weak var aureliusButton: UIButton!
    @IBOutlet weak var descartesButton: UIButton!
    @IBOutlet weak var lockeButton: UIButton!
    @IBOutlet weak var kantButton: UIButton!
    @IBOutlet weak var goetheButton: UIButton!
    @IBOutlet weak var emersonButton: UIButton!
    @IBOutlet weak var kierkegaardButton: UIButton!
    @IBOutlet weak var thoreauButton: UIButton!
    @IBOutlet weak var nietzscheButton: UIButton!
    @IBOutlet weak var franklButton: UIButton!
    @IBOutlet weak var randButton: UIButton!
    @IBOutlet weak var jungButton: UIButton!

    @IBOutlet weak var schopenhauerButton: UIButton!
    
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       if (UserDefaults.standard.bool(forKey: "saved") == false)
       {
        let cor = 0.6
        
        defaults.set(cor, forKey: "alpha")
        
        let dict : [String : Bool] = [ "suntzu": false, "heraclitus": false,"socrates": false, "plato": false, "aristotle" : false, "seneca": false, "epictetus": false, "aurelius": false, "descartes": false, "locke": false, "kant": false, "goethe": false, "emerson": false,"kierkegaard": false,"thoreau": false,"nietzsche": false, "frankl": false,"rand": false, "jung": false, "schopenhauer": false]
        
        defaults.set(25, forKey: "Age")
        defaults.set(dict, forKey: "dict")
        defaults.set(0, forKey: "Index")
        
        let arr1_philosopher : [String] = []
        let arr2_index : [Int] = []
        
        defaults.set(arr1_philosopher, forKey: "arr1_phil")
        defaults.set(arr2_index, forKey: "arr2_index")
        
        let background_dict : [String: Bool] = [ "s1": false, "s2": false,"s3": false, "s4": false, "s5" : false, "s6": false, "s7": false, "s8": false, "s9": false, "s10": false, "s11": false, "s12": false, "s13": false,"s14": false,"s15": false,"s16": false, "s17": false,"s18": false, "s19": false, "s20": false]
        
        defaults.set(background_dict, forKey: "background_dict")
        
        
        
        }
        if (UserDefaults.standard.bool(forKey: "saved") == true)
        {
        let dict = UserDefaults.standard.dictionary(forKey:"dict")!
        for (philosopher, boolean) in dict{
            if boolean as! Bool == true
            {
                print(philosopher)
                switch philosopher
                {
                    case "aristotle":
                        aristotleButton.sendActions(for: .touchUpInside)
                    case "plato":
                        platoButton.sendActions(for: .touchUpInside)
                    case"socrates":
                        socratesButton.sendActions(for: .touchUpInside)
                    case "kant":
                        kantButton.sendActions(for: .touchUpInside)
                    case "suntzu":
                        suntzuButton.sendActions(for: .touchUpInside)
                    case "heraclitus":
                        heraclitusButton.sendActions(for: .touchUpInside)
                    case "descartes":
                        descartesButton.sendActions(for: .touchUpInside)
                    case "emerson":
                        emersonButton.sendActions(for: .touchUpInside)
                    case "epictetus":
                        epictetusButton.sendActions(for: .touchUpInside)
                    case "frankl":
                        franklButton.sendActions(for: .touchUpInside)
                    case "goethe":
                        goetheButton.sendActions(for: .touchUpInside)
                    case "kierkegaard":
                        kierkegaardButton.sendActions(for: .touchUpInside)
                    case "locke":
                        lockeButton.sendActions(for: .touchUpInside)
                    case "aurelius":
                        aureliusButton.sendActions(for: .touchUpInside)
                    case "nietzsche":
                        nietzscheButton.sendActions(for: .touchUpInside)
                    case "rand":
                        randButton.sendActions(for: .touchUpInside)
                    case "seneca":
                        senecaButton.sendActions(for: .touchUpInside)
                    case "thoreau":
                        thoreauButton.sendActions(for: .touchUpInside)
                    case "jung":
                        jungButton.sendActions(for: .touchUpInside)
                    case "schopenhauer":
                        schopenhauerButton.sendActions(for: .touchUpInside)
                    //shopenhaur
                    default:
                        print("there was nothing to select ")
                }
            }
        }
    }
}

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func suntzuButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "suntzu")
    }

    @IBAction func heraclitusButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "heraclitus")
    }
    
    @IBAction func socratesButtonPressed(_ sender: UIButton){
        button_logic(sender_arg: sender, phil_name: "socrates")
    }
    
    @IBAction func platoButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "plato")
    }
    @IBAction func aristotleButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "aristotle")
    }
    @IBAction func senecaButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "seneca")
    }
    @IBAction func epictetusButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "epictetus")
    }
    
    @IBAction func aureliusButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "aurelius")
    }
    
    @IBAction func descartesButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "descartes")
    }
    
    @IBAction func lockeButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "locke")
    }
    
    @IBAction func kantButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "kant")
    }
    @IBAction func goetheButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "goethe")
    }
    @IBAction func emersonButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "emerson")
    }
    @IBAction func kierkegaardButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "kierkegaard")
    }
    
    @IBAction func thoreauButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "thoreau")
    }
    
    @IBAction func nietzscheButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "nietzsche")
    }
    
    @IBAction func franklButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "frankl")
    }
    
    @IBAction func randButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "rand")
    }
    
    @IBAction func jungButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "jung")
    }
    
    @IBAction func schopenhauerButtonPressed(_ sender: UIButton) {
        button_logic(sender_arg: sender, phil_name: "schopenhauer")
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        let dict = UserDefaults.standard.dictionary(forKey:"dict")!
        var atleast_one_philosopher_selected = false
        for (_, boolean) in dict {
            if boolean as! Bool == true
            {
                atleast_one_philosopher_selected = true
                break
            }
        }
        if (atleast_one_philosopher_selected == false)
        {
            let alertController = UIAlertController(title: "No philosphers were selected", message: "You must select atleast one philosopher before proceeding. Try again", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
            
        else if (UserDefaults.standard.bool(forKey: "saved") == false)
        {
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                let nextViewController = storyBoard.instantiateViewController(withIdentifier: "notify")
                nextViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
                self.present(nextViewController, animated:true, completion:nil)
        }
        else
        {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "quotes")
            nextViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.present(nextViewController, animated:true, completion:nil)
            //self.present(nextViewController, animated: true,completion:)
        }
        
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
    
    @IBAction func selectAllButtonPressed(_ sender: Any) {
        let p_dict = UserDefaults.standard.dictionary(forKey:"dict")!
            //print(user_selected_phil_dictionary["plato"])
        if (p_dict["aristotle"] as! Bool == false) {aristotleButton.sendActions(for: .touchUpInside)}
        if (p_dict["plato"] as! Bool == false){platoButton.sendActions(for: .touchUpInside)}
        if (p_dict["socrates"] as! Bool == false){socratesButton.sendActions(for: .touchUpInside)}
        if (p_dict["kant"] as! Bool == false){kantButton.sendActions(for: .touchUpInside)}
        if (p_dict["suntzu"] as! Bool == false){suntzuButton.sendActions(for: .touchUpInside)}
        if (p_dict["heraclitus"] as! Bool == false){heraclitusButton.sendActions(for: .touchUpInside)}
        if (p_dict["descartes"] as! Bool == false){descartesButton.sendActions(for: .touchUpInside)}
        if (p_dict["emerson"] as! Bool == false){emersonButton.sendActions(for: .touchUpInside)}
        if (p_dict["epictetus"] as! Bool == false){epictetusButton.sendActions(for: .touchUpInside)}
        if (p_dict["frankl"] as! Bool == false){franklButton.sendActions(for: .touchUpInside)}
        if (p_dict["goethe"] as! Bool == false){goetheButton.sendActions(for: .touchUpInside)}
        if (p_dict["kierkegaard"] as! Bool == false){kierkegaardButton.sendActions(for: .touchUpInside)}
        if (p_dict["locke"] as! Bool == false){lockeButton.sendActions(for: .touchUpInside)}
        if (p_dict["aurelius"] as! Bool == false){aureliusButton.sendActions(for: .touchUpInside)}
        if (p_dict["nietzsche"] as! Bool == false){nietzscheButton.sendActions(for: .touchUpInside)}
        if (p_dict["rand"] as! Bool == false){randButton.sendActions(for: .touchUpInside)}
        if (p_dict["seneca"] as! Bool == false){senecaButton.sendActions(for: .touchUpInside)}
        if (p_dict["thoreau"] as! Bool == false){thoreauButton.sendActions(for: .touchUpInside)}
        if (p_dict["jung"] as! Bool == false){jungButton.sendActions(for: .touchUpInside)}
        if (p_dict["schopenhauer"] as! Bool == false){ schopenhauerButton.sendActions(for: .touchUpInside)}
                
    }
    
    
}
