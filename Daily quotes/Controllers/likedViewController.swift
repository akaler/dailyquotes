//
//  likedViewController.swift
//  Daily Quotes
//
//  Created by Abhijot Kaler on 23/09/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit


 func get_quote(name: String, index: Int) -> String
{
    switch name
    {
    case "aristotle":
        return aristotle().quotes[index]
    case "plato":
        return plato().quotes[index]
    case "socrates":
        return socrates().quotes[index]
    case "kant":
        return Kant().quotes[index]
    case "suntzu":
        return SunTzu().quotes[index]
    case "heraclitus":
        return Heraclitus().quotes[index]
    case "descartes":
        return Descartes().quotes[index]
    case "emerson":
        return Emerson().quotes[index]
    case "epictetus":
        return Epictetus().quotes[index]
    case "frankl":
        return Frankl().quotes[index]
    case "goethe":
        return Goethe().quotes[index]
    case "kierkegaard":
        return Kierkegaard().quotes[index]
    case "locke":
        return Locke().quotes[index]
    case "aurelius":
        return Aurelius().quotes[index]
    case "nietzsche":
        return Nietzsche().quotes[index]
    case "rand":
        return Rand().quotes[index]
    case "seneca":
        return Seneca().quotes[index]
    case "thoreau":
        return Thoreau().quotes[index]
    case "jung":
        return Jung().quotes[index]
    case "schopenhauer":
        return Schopenhauer().quotes[index]
    default:
        return "Something went wrong"
    }
    
    
}

class likedViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nextquoteButton: RoundButton!
    @IBOutlet weak var philosopherImage: UIImageView!
    @IBOutlet weak var philosopherNameLabel: UILabel!
    @IBOutlet weak var blackImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var tuple_quote_name : (String, String) = ("", "")
    var arr1_philosopher: [String] = [""]
    var arr2_index : [Int] = [0]
    var len_of_arrays : Int = 0
    
    
    var stack_index_tracker : Int = -1
    var stack = Stack()
    override func viewDidLoad() {
        super.viewDidLoad()
        blackImage.alpha = 0.8
        // Do any additional setup after loading the view.
        set_background_image()
        arr1_philosopher = UserDefaults.standard.stringArray(forKey: "arr1_phil") ?? [String]()
        arr2_index = UserDefaults.standard.array(forKey: "arr2_index") as? [Int] ?? [Int]()
        if (arr1_philosopher.count == 0)
        {
            quoteLabel.text = "No quotes were liked\nHead back and pick your favourite quotes"
            philosopherNameLabel.text = ""
        }
        else
        {
        len_of_arrays = arr1_philosopher.count
        
        display_quote()
        }
        
    }
    private func set_background_image()
    {
        let random_num : Int = Int.random(in: 1 ... 45 )
        let random_img : String = "a\(random_num)"
        backgroundImage.image = UIImage(named: random_img)
    }
    
    @IBAction func nextQuoteButtonPressed(_ sender: Any) {
        if (arr1_philosopher.count > 0)
        {
        
        var index = UserDefaults.standard.integer(forKey: "Index")
        print("index right after next quote button pressed: \(index)")
        if (index == len_of_arrays)
        {
            index = 0
        }
        display_quote()
        index += 1
        UserDefaults.standard.set(index, forKey: "Index")
        }
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        if (arr1_philosopher.count > 0)
        {
        var index = UserDefaults.standard.integer(forKey: "Index")
        print("index right after back quote button pressed: \(index)")
        if (index != 0)
        {
            index -= 2
            UserDefaults.standard.set(index, forKey: "Index")
            display_quote()
            index += 1
            UserDefaults.standard.set(index, forKey: "Index")
        }
        }
    }
    @IBAction func shareButtonPressed(_ sender: Any) {
        if tuple_quote_name != ("", "")
        {
        let quote : String = tuple_quote_name.0
        let phil_name = tuple_quote_name.1
        let share_text: String = "\"\(quote)\" - \(phil_name)"
        let activityVC = UIActivityViewController(activityItems: [share_text], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
        }
    }
    
    private func display_quote()
    {
        var index = UserDefaults.standard.integer(forKey: "Index")
        if (index >= len_of_arrays || index < 0)
        {
            index = 0
            UserDefaults.standard.set(index, forKey: "Index")
        }
        let phil_name = arr1_philosopher[index]
        let index_of_quote = arr2_index[index]
        let quote : String = get_quote(name: phil_name, index: index_of_quote)
        let phil_full_name : String = return_full_name(last_name: phil_name)
        quoteLabel.text = quote
        philosopherNameLabel.text = phil_full_name
        philosopherImage.image = UIImage(named: phil_name)
        tuple_quote_name = (quote, phil_full_name)
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
