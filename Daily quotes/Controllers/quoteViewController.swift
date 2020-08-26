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
    
    print("why isn't a random number being generated????lkjasdlkfjsdaklfjlakdsfjlakdsjfladjsflkadjsflkjaflkjadslkfjlkafjkasldkfjlkasjf")
    print("getrandomindexGenerated: \(random_int)")
       return random_int
        
   }

func get_random_quote(phil_name: String) -> String
{
    let random_index = getrandomindex()
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

    let string_dic : Dictionary = ["aristotle" : aristotle().quotes[getrandomindex()],
                                   "plato": plato().quotes[getrandomindex()],
                                   "socrates": socrates().quotes[getrandomindex()],
                                   "kant": kant().quotes[getrandomindex()]] as [String : Any] //this dictionary is gonna return a quote
    
    
    /*
    let string_dic : Dictionary = ["aristotle" : aristotle().quotes[getrandomindex()],
        "plato": {plato().quotes},
        "socrates": {socrates().quotes},
        "kant": {kant().quotes}] as [String : Any]
*/
    
    
    let defaults = UserDefaults.standard
    var user_selected_phil_arr : [String] = []
    
    var platoarr: [String] = ["plato quote 1", "plato quote 2"]
//    var items: [Philosophers]?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //UserDefaults.standard.defaults.set( platoarr, forKey: "platoarr")
        randomize()
        
        let user_selected_phil_dictionary = UserDefaults.standard.dictionary(forKey:"dict")!
        for (philospher, ischoosen) in user_selected_phil_dictionary {
            if ischoosen as! Bool{
                user_selected_phil_arr.append(philospher)
            }
        }
        
    }
    
    
    
    @IBAction func nextQuoteButton(_ sender: Any) {
        print("these philosphers were selected: \(user_selected_phil_arr)")
        
        let count_of_selected_philosphers = user_selected_phil_arr.count
        
        let randomly_choosen_philsopher : String = user_selected_phil_arr[Int.random(in: 0 ..< count_of_selected_philosphers)]
        
        print("randomly_choosen_philospher: \(randomly_choosen_philsopher)")
        
        print("one quote from this philospher: \(get_random_quote(phil_name: randomly_choosen_philsopher))")
        
        //quoteLabel.text = string_dic[randomly_choosen_philsopher]
        
        quoteLabel.text = get_random_quote(phil_name: randomly_choosen_philsopher)
    }
    fileprivate func randomize()
    {
     
        
   //     quoteLabel.text = Kant().quotes[0]
        
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
