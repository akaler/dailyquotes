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
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
       if (UserDefaults.standard.bool(forKey: "saved") == false)
       {
        let dict : [String : Bool] = [ "suntzu": false, "heraclitus": false,"socrates": false, "plato": false, "aristotle" : false, "seneca": false, "epictetus": false, "aurelius": false, "descartes": false, "locke": false, "kant": false, "goethe": false, "emerson": false,"kierkegaard": false,"thoreau": false,"nietzsche": false, "frankl": false,"rand": false]
        defaults.set(25, forKey: "Age")
        defaults.set( dict, forKey: "dict")
        }
       // heraclitusButton.sendActions(for: .touchUpInside)
        
        if (UserDefaults.standard.bool(forKey: "saved") == true)
        {
        let dict = UserDefaults.standard.dictionary(forKey:"dict")!
        for (philosopher, boolean) in dict{
            if boolean as! Bool == true
            {
                print(philosopher)
                
                switch philosopher
                {
                case "aristotle": aristotleButton.sendActions(for: .touchUpInside)
                        
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
                        //thoreauButtonPressed(thoreauButton)
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
}
