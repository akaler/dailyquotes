//
//  quoteViewController.swift
//  Daily quotes
//
//  Created by Abhijot Kaler on 25/08/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit
import CoreData

func getrandomindex(upper_limit : Int) -> Int
   {
    print(upper_limit)
        let random_int = Int.random(in: 0 ..< upper_limit)
    
    
    //print("getrandomindexGenerated: \(random_int)")
       return random_int
        
   }

func get_quote_array_size (phil_name_argument: String) -> Int
{
    print("the phil_name_arg: \(phil_name_argument)")
    switch phil_name_argument
    {
        case "aristotle":
            return aristotle().quotes.count
        case "plato":
            return plato().quotes.count
        case"socrates":
            return socrates().quotes.count
        case "kant":
            return kant().quotes.count
        case "suntzu":
            return SunTzu().quotes.count
        case "heraclitus":
            return Heraclitus().quotes.count
        default:
            return 0
    }
}

func get_random_quote(phil_name: String) -> String
{
    let phil_quote_array_size = get_quote_array_size(phil_name_argument: phil_name)
    let random_index = getrandomindex(upper_limit :phil_quote_array_size)
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
    case "suntzu":
        return SunTzu().quotes[random_index]
    case "heraclitus":
        return Heraclitus().quotes[random_index]
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
        
        for (philospher, ischoosen) in user_selected_phil_dictionary {     // initializing user_selected_phil_arr
            if ischoosen as! Bool{
                user_selected_phil_arr.append(philospher)
            }
        }
    }

    @IBAction func nextQuoteButton(_ sender: Any) {
        let count_of_selected_philosphers = user_selected_phil_arr.count
        let randomly_choosen_philsopher : String = user_selected_phil_arr[Int.random(in: 0 ..< count_of_selected_philosphers)]
        print(user_selected_phil_arr)
        print(randomly_choosen_philsopher)
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
