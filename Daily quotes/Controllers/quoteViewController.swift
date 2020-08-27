//
//  quoteViewController.swift
//  Daily quotes
//
//  Created by Abhijot Kaler on 25/08/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit
import CoreData

func getrandomindex() -> Int
   {
        let random_int = Int.random(in: 0 ..< 10)
    
    
    //print("getrandomindexGenerated: \(random_int)")
       return random_int
        
   }

func get_random_quote(phil_name: String) -> String
{
    let random_index = getrandomindex()
    print("random_index for: \(phil_name) is \(random_index)")
    switch phil_name
    {
    case "aristotle":
        return aristotle().quotes[random_index]
    case "plato":
        return plato().quotes[random_index]
    case"socrates":
        return socrates().quotes[random_index]
    case "kant":
        return kant().quotes[random_index]
    default:
        return "Something went wrong"
    }
}


class quoteViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var philosopherImageView: UIImageView!
    @IBOutlet weak var philospherNameLabel: UILabel!
    var user_selected_phil_arr : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        let user_selected_phil_dictionary = UserDefaults.standard.dictionary(forKey:"dict")!
        // initializing user_selected_phil_arr
        for (philospher, ischoosen) in user_selected_phil_dictionary {
            if ischoosen as! Bool{
                user_selected_phil_arr.append(philospher)
            }
        }
        
    }

    @IBAction func nextQuoteButton(_ sender: Any) {
        let count_of_selected_philosphers = user_selected_phil_arr.count
        let randomly_choosen_philsopher : String = user_selected_phil_arr[Int.random(in: 0 ..< count_of_selected_philosphers)]
        
        quoteLabel.text = get_random_quote(phil_name: randomly_choosen_philsopher)
        philospherNameLabel.text = randomly_choosen_philsopher.capitalizingFirstLetter()
        philosopherImageView.image = UIImage(named: randomly_choosen_philsopher)
        
    }
}



extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
