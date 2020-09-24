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

func get_random_quote(phil_name: String) -> (String, Int)
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
        return (aristotle().quotes[random_index], random_index)
    case "plato":
        return (plato().quotes[random_index], random_index)
    case"socrates":
        return (socrates().quotes[random_index], random_index)
    case "kant":
        return (Kant().quotes[random_index], random_index)
    case "suntzu":
        return (SunTzu().quotes[random_index], random_index)
    case "heraclitus":
        return (Heraclitus().quotes[random_index], random_index)
    case "descartes":
        return (Descartes().quotes[random_index], random_index)
    case "emerson":
        return (Emerson().quotes[random_index], random_index)
    case "epictetus":
        return (Epictetus().quotes[random_index], random_index)
    case "frankl":
            return (Frankl().quotes[random_index], random_index)
    case "goethe":
        return (Goethe().quotes[random_index], random_index)
    case "kierkegaard":
        return (Kierkegaard().quotes[random_index], random_index)
    case "locke":
        return (Locke().quotes[random_index], random_index)
    case "aurelius":
        return (Aurelius().quotes[random_index], random_index)
    case "nietzsche":
        return (Nietzsche().quotes[random_index], random_index)
    case "rand":
        return (Rand().quotes[random_index], random_index)
    case "seneca":
        return (Seneca().quotes[random_index], random_index)
    case "thoreau":
        return (Thoreau().quotes[random_index], random_index)
    case "jung":
        return (Jung().quotes[random_index], random_index)
    case "schopenhauer":
        return (Schopenhauer().quotes[random_index], random_index)
    default:
        return ("Something went wrong", 0)
    }
}

public func return_full_name(last_name: String) -> String {
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

struct Stack{
    //(philosopher_name, quote, index)
    private var stack: [(String, String, Int)] = []
    
    mutating func push(tuple: (String, String, Int))
    {
        stack.append(tuple)
    }
    mutating func pop() -> (String,String,Int)?{
        return stack.popLast()
    }
    func peek() -> (String, String, Int) {
        guard let topElement = stack.last else {return ("empty","empty", 0)}
        return topElement
    }
    func get_this_index(index: Int) -> (String, String, Int) {
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
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var shareButton: UIButton!
    //var current_tuple_displayed: (String, Int)
    var stack_index_tracker: Int = -1
    var user_selected_phil_arr : [String] = []
    var current_tuple_on_screen : (String, Int) = ("", 0)
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
        //setting navigation controller to transparent
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
        
        print("this is a new view")
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

    private func deselect_heart_button()
    {
        if (heartButton.isSelected)
        {
            heartButton.isSelected = false
        }
    }
    
    
    private func isThisQuoteLiked(name: String, index: Int) ->Bool
    {
        let arr1_philosopher: [String] = UserDefaults.standard.stringArray(forKey: "arr1_phil") ?? [String]()
        let arr2_index = UserDefaults.standard.array(forKey: "arr2_index") as? [Int] ?? [Int]()
        
        let len_of_array : Int = arr1_philosopher.count
        let len_of_indexes: Int = arr2_index.count
        if len_of_array == 0
        {
            return false
        }
        print(len_of_array)
        
        for i in 0...(len_of_array - 1)
        {
            if (arr1_philosopher[i] == name && arr2_index[i] == index)
            {
                return true
            }
        }
        
        return false
    }
    
    @IBAction func nextQuoteButton(_ sender: Any) {
        
        deselect_heart_button()
        let arr1_philospher : [String] = UserDefaults.standard.stringArray(forKey: "arr1_phil") ?? [String]()
        print("arr1_philosopher: \(arr1_philospher)")
        
        if (stack_index_tracker + 1 == stack.return_length_of_stack())
        {
            let count_of_selected_philosphers = user_selected_phil_arr.count
            let randomly_choosen_philsopher : String = user_selected_phil_arr[Int.random(in: 0 ..< count_of_selected_philosphers)]
            let get_random_index_tuple = get_random_quote(phil_name: randomly_choosen_philsopher)
            let quote = get_random_index_tuple.0
            let index = get_random_index_tuple.1
            current_tuple_on_screen = (randomly_choosen_philsopher, index)
            //change the stack tuple to add index number
            quoteLabel.text = quote
            philospherNameLabel.text = return_full_name(last_name: randomly_choosen_philsopher)
            philosopherImageView.image = UIImage(named: randomly_choosen_philsopher)
            stack.push(tuple: (randomly_choosen_philsopher,quote, index))
            stack.print_stack()
            stack_index_tracker += 1
            
            if (isThisQuoteLiked(name: randomly_choosen_philsopher, index: index))
            {
                heartButton.isSelected = true
            }
        }
            
        else
        {
            stack_index_tracker += 1
            let displayed_tuple = stack.get_this_index(index: stack_index_tracker)
            quoteLabel.text = displayed_tuple.1
            philospherNameLabel.text = return_full_name(last_name: displayed_tuple.0)
            philosopherImageView.image = UIImage(named: displayed_tuple.0)
            current_tuple_on_screen = (displayed_tuple.0, displayed_tuple.2)
            
            if (isThisQuoteLiked(name: displayed_tuple.0, index: displayed_tuple.2))
            {
                heartButton.isSelected = true
            }
            
        }
        print("stack_index_tracker: \(stack_index_tracker)")
        print("Length of the array: \(stack.return_length_of_stack())")
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        deselect_heart_button()
        if stack_index_tracker > 0
        {
            stack_index_tracker -= 1
            print("printing stack get this index \n\n")
            print(stack.get_this_index(index: stack_index_tracker))
            
            let previous_tuple = stack.get_this_index(index: stack_index_tracker)
            current_tuple_on_screen = (previous_tuple.0, previous_tuple.2)
            quoteLabel.text = previous_tuple.1
            philospherNameLabel.text = return_full_name(last_name: previous_tuple.0)
            philosopherImageView.image = UIImage(named: previous_tuple.0)
            
            if (isThisQuoteLiked(name: previous_tuple.0, index: previous_tuple.2))
            {
                heartButton.isSelected = true
            }
        }

    }
    
    private func remove_this_liked_quote(name: String, index: Int)
    {
        var arr1_philosopher: [String] = UserDefaults.standard.stringArray(forKey: "arr1_phil") ?? [String]()
        var arr2_index = UserDefaults.standard.array(forKey: "arr2_index") as? [Int] ?? [Int]()
        
        let len_of_array : Int = arr1_philosopher.count
        
        for i in 0...(len_of_array - 1)
        {
            if (arr1_philosopher[i] == name && arr2_index[i] == index)
            {
                arr1_philosopher.remove(at: i)
                arr2_index.remove(at: i)
                break
            }
        }
        
        
        UserDefaults.standard.set(arr1_philosopher, forKey: "arr1_phil")
        UserDefaults.standard.set(arr2_index, forKey: "arr2_index")
        
        
    }
    
    @IBAction func heartButtonPressed(_ sender: UIButton) {
        if sender.isSelected
        {
            sender.isSelected = false
            remove_this_liked_quote(name: current_tuple_on_screen.0 , index: current_tuple_on_screen.1)
            
            
            
            print("heartbutton unpressed CALLED: and the current tuple : \(current_tuple_on_screen)")
        }
        else
        {
            var arr1_philosopher : [String] = UserDefaults.standard.stringArray(forKey: "arr1_phil") ?? [String]()
            arr1_philosopher.append(current_tuple_on_screen.0)
            UserDefaults.standard.set(arr1_philosopher, forKey: "arr1_phil")
            var arr2_index = UserDefaults.standard.array(forKey: "arr2_index") as? [Int] ?? [Int]()
            arr2_index.append(current_tuple_on_screen.1)
            UserDefaults.standard.set(arr2_index, forKey: "arr2_index")
            sender.isSelected = true
            
        }
        
        print("heardButton presesed")
    }
    @IBAction func shareButtonPressed(_ sender: Any) {
        let quote : String = get_quote(name: current_tuple_on_screen.0, index: current_tuple_on_screen.1)
        let phil_name = return_full_name(last_name: current_tuple_on_screen.0)
        let share_text: String = "\"\(quote)\" - \(phil_name)"
        let activityVC = UIActivityViewController(activityItems: [share_text], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
    public func notification_quote() -> String{
        let count_of_selected_philosphers = user_selected_phil_arr.count
        let randomly_choosen_philsopher : String = user_selected_phil_arr[Int.random(in: 0 ..< count_of_selected_philosphers)]
        let get_random_quote_tuple = get_random_quote(phil_name: randomly_choosen_philsopher)
        return get_random_quote_tuple.0
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
