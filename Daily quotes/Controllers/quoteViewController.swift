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
  //  print("the phil_name_arg: \(phil_name_argument)")
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
        case "jung" :
            return Jung().quotes.count
        case "schopenhauer":
            return Schopenhauer().quotes.count
        default:
            return 0
    }
}

func get_random_quote(phil_name: String) -> String
{
    let phil_quote_array_size = get_quote_array_size(phil_name_argument: phil_name)
    var random_index = getrandomindex(upper_limit :phil_quote_array_size)
    
    if last_index == random_index {
      //  print("last_index and random_index were same")
        random_index = getrandomindex(upper_limit: phil_quote_array_size)
    }
    else
    {
        last_index = random_index
    }
    //print("random_index: \(random_index)")
   // print("last)index: \(last_index)")
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
    case "jung":
        return Jung().quotes[random_index]
    case "schopenhauer":
        return Schopenhauer().quotes[random_index]
    default:
        return "Something went wrong"
    }
}

struct Stack{
    //(philosopher_name, quote)
    private var stack: [(String, String)] = []
    
    mutating func push(tuple: (String, String))
    {
        stack.append(tuple)
    }
    mutating func pop() -> (String,String)?{
        return stack.popLast()
    }
    func peek() -> (String, String) {
        guard let topElement = stack.last else {return ("empty","empty")}
        return topElement
    }
    func get_this_index(index: Int) -> (String, String) {
        return stack[index]
    }
    func return_length_of_stack() ->Int{
        return stack.count
    }
    func print_stack()
    {
        print(stack)
    }
}

class quoteViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var philosopherImageView: UIImageView!
    @IBOutlet weak var philospherNameLabel: UILabel!
    @IBOutlet weak var nextQuoteButton: RoundButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var blackImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    var stack_index_tracker: Int = -1
    var user_selected_phil_arr : [String] = []
    var stack = Stack()
    override func viewDidLoad() {
        super.viewDidLoad()
        blackImage.alpha = 0.8
        
        let user_selected_phil_dictionary = UserDefaults.standard.dictionary(forKey:"dict")!
        UserDefaults.standard.set(true, forKey: "saved")
        for (philospher, ischoosen) in user_selected_phil_dictionary {     // initializing user_selected_phil_arr
            if ischoosen as! Bool{
                user_selected_phil_arr.append(philospher)
            }
        }
        nextQuoteButton.sendActions(for: .touchUpInside)
        set_background_image()
    }
    
    private func set_background_image()
    {
        let random_num : Int = Int.random(in: 1 ... 45 )
        let random_img : String = "a\(random_num)"
        backgroundImage.image = UIImage(named: random_img)

    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func nextQuoteButton(_ sender: Any) {
        //set_background_image()
        //just changed the style of this button
        if (stack_index_tracker + 1 == stack.return_length_of_stack())
        {
            let count_of_selected_philosphers = user_selected_phil_arr.count
            let randomly_choosen_philsopher : String = user_selected_phil_arr[Int.random(in: 0 ..< count_of_selected_philosphers)]
            let quote = get_random_quote(phil_name: randomly_choosen_philsopher)
            quoteLabel.text = quote
            philospherNameLabel.text = return_full_name(last_name: randomly_choosen_philsopher)
            philosopherImageView.image = UIImage(named: randomly_choosen_philsopher)
            stack.push(tuple: (randomly_choosen_philsopher,quote))
            stack.print_stack()
            stack_index_tracker += 1
        }
        else
        {
            stack_index_tracker += 1
            let displayed_tuple = stack.get_this_index(index: stack_index_tracker)
            quoteLabel.text = displayed_tuple.1
            philospherNameLabel.text = return_full_name(last_name: displayed_tuple.0)
            philosopherImageView.image = UIImage(named: displayed_tuple.0)
            
        }
        print("stack_index_tracker: \(stack_index_tracker)")
        print("Length of the array: \(stack.return_length_of_stack())")
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        
        if stack_index_tracker > 0
        {
            stack_index_tracker -= 1
            
            print("printing stack get this index \n\n")
            print(stack.get_this_index(index: stack_index_tracker))
        
            let previous_tuple = stack.get_this_index(index: stack_index_tracker)
            quoteLabel.text = previous_tuple.1
            philospherNameLabel.text = return_full_name(last_name: previous_tuple.0)
            philosopherImageView.image = UIImage(named: previous_tuple.0)
        }

        
        
    }
    public func notification_quote() -> String{
        let count_of_selected_philosphers = user_selected_phil_arr.count
        let randomly_choosen_philsopher : String = user_selected_phil_arr[Int.random(in: 0 ..< count_of_selected_philosphers)]
        let quote = get_random_quote(phil_name: randomly_choosen_philsopher)
        return quote
    }
    
    private func return_full_name(last_name: String) -> String {
        switch last_name
        {
            case "aristotle":
                return "Aristotle"
            case "plato":
                return "Plato"
            case"socrates":
                return "Socrates"
            case "kant":
                return "Immanuel Kant"
            case "suntzu":
                return "Sun Tzu"
            case "heraclitus":
                return "Heraclitus"
            case "descartes":
                return "René Descartes"
            case "emerson":
                return "Ralph Waldo Emerson"
            case "epictetus":
                return "Epictetus"
            case "frankl":
                return "Viktor Frankl"
            case "goethe":
                return "Johann Wolfgang von Goethe"
            case "kierkegaard":
                return "Søren Kierkegaard"
            case "locke":
                return "John Locke"
            case "aurelius":
                return "Marcus Aurelius"
            case "nietzsche":
                return "Friedrich Nietzsche"
            case "rand":
                return "Ayn Rand"
            case "seneca":
                return "Lucius Annaeus Seneca"
            case "thoreau":
                return "Henry David Thoreau"
            case "jung":
                return "Carl Jung"
            case "schopenhauer":
                return "Arthur Schopenhauer"
            default:
                return ""
        }
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
