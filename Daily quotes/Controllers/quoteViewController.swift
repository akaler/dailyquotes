//
//  quoteViewController.swift
//  Daily quotes
//
//  Created by Abhijot Kaler on 25/08/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit
import CoreData
import UserNotifications




var last_index = 0

func getrandomindex(upper_limit : Int) -> Int
   {
    print(upper_limit)
    if (upper_limit == 0)
    {
        return 0
    }
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
            return Kant().quotes.count
        case "suntzu":
            return SunTzu().quotes.count
        case "heraclitus":
            return Heraclitus().quotes.count
        case "descartes":
            return Descartes().quotes.count
        case "emerson":
            return Emerson().quotes.count
        case "epictetus":
            return Epictetus().quotes.count
        case "frankl":
                return Frankl().quotes.count
        case "goethe":
            return Goethe().quotes.count
        case "kierkegaard":
            return Kierkegaard().quotes.count
        case "locke":
            return Locke().quotes.count
        case "aurelius":
            return Aurelius().quotes.count
        case "nietzsche":
            return Nietzsche().quotes.count
        case "rand":
            return Rand().quotes.count
        case "seneca":
            return Seneca().quotes.count
        case "thoreau":
            return Thoreau().quotes.count
        default:
            return 0
    }
}

func get_random_quote(phil_name: String) -> String
{
    let phil_quote_array_size = get_quote_array_size(phil_name_argument: phil_name)
    var random_index = getrandomindex(upper_limit :phil_quote_array_size)
    
    if last_index == random_index {
        print("last_index and random_index were same")
        random_index = getrandomindex(upper_limit: phil_quote_array_size)
    }
    else
    {
        last_index = random_index
    }
    print("random_index: \(random_index)")
    print("last)index: \(last_index)")
    switch phil_name
    {
    case "aristotle":
        return aristotle().quotes[random_index]
    case "plato":
        return plato().quotes[random_index]
    case"socrates":
        return socrates().quotes[random_index]
    case "kant":
        return Kant().quotes[random_index]
    case "suntzu":
        return SunTzu().quotes[random_index]
    case "heraclitus":
        return Heraclitus().quotes[random_index]
    case "descartes":
        return Descartes().quotes[random_index]
    case "emerson":
        return Emerson().quotes[random_index]
    case "epictetus":
        return Epictetus().quotes[random_index]
    case "frankl":
            return Frankl().quotes[random_index]
    case "goethe":
        return Goethe().quotes[random_index]
    case "kierkegaard":
        return Kierkegaard().quotes[random_index]
    case "locke":
        return Locke().quotes[random_index]
    case "aurelius":
        return Aurelius().quotes[random_index]
    case "nietzsche":
        return Nietzsche().quotes[random_index]
    case "rand":
        return Rand().quotes[random_index]
    case "seneca":
        return Seneca().quotes[random_index]
    case "thoreau":
        return Thoreau().quotes[random_index]
    default:
        return "Something went wrong"
    }
}


class quoteViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var philosopherImageView: UIImageView!
    @IBOutlet weak var philospherNameLabel: UILabel!
    @IBOutlet weak var nextQuoteButton: RoundButton!
    var user_selected_phil_arr : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let user_selected_phil_dictionary = UserDefaults.standard.dictionary(forKey:"dict")!
        UserDefaults.standard.set(true, forKey: "saved")
        for (philospher, ischoosen) in user_selected_phil_dictionary {     // initializing user_selected_phil_arr
            if ischoosen as! Bool{
                user_selected_phil_arr.append(philospher)
            }
        }
        nextQuoteButton.sendActions(for: .touchUpInside)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func nextQuoteButton(_ sender: Any) {
        //just changed the style of this button
        let count_of_selected_philosphers = user_selected_phil_arr.count
        
        let randomly_choosen_philsopher : String = user_selected_phil_arr[Int.random(in: 0 ..< count_of_selected_philosphers)]
        
        print(user_selected_phil_arr)
        print(randomly_choosen_philsopher)
        
        quoteLabel.text = get_random_quote(phil_name: randomly_choosen_philsopher)
        
        philospherNameLabel.text = randomly_choosen_philsopher.capitalizingFirstLetter()
        
        philosopherImageView.image = UIImage(named: randomly_choosen_philsopher)
        
        
    }
    public func notification_quote() -> String{
        let count_of_selected_philosphers = user_selected_phil_arr.count
        
        let randomly_choosen_philsopher : String = user_selected_phil_arr[Int.random(in: 0 ..< count_of_selected_philosphers)]
        let quote = get_random_quote(phil_name: randomly_choosen_philsopher)
        return quote
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
