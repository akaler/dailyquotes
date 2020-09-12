//
//  notificationViewController.swift
//  Daily quotes
//
//  Created by Abhijot Kaler on 11/09/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit
import UserNotifications

class notificationViewController: UIViewController {

    private let notificationPublisher = NotificationPublisher()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Ask for permission
        /*
        let center = UNUserNotificationCenter.current()
        
        
        center.requestAuthorization(options: [.alert])
        {
            (granted, error) in
        }
        let content = UNMutableNotificationContent()
        content.title = "Hey I'm a notifciation!"
        content.body = "i can't type"
        
        //step 3: trigger
        let date = Date().addingTimeInterval(10)
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        //step 4: create the request
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        //step 5: register the request
        center.add(request) {(error) in
            }
 */
        
        
    }
    
    
/*
    private func requestNotificationAuthorization(application: UIApplication)
    {
        let center = UNUserNotificationCenter.current()
        let options: UNAuthorizationOptions = [.alert, .badge, .sound]
        center.requestAuthorization(options: options) { granted, error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }

    */
    
    private func requestNotificationAuthorization(){
        let center = UNUserNotificationCenter.current()
        let options: UNAuthorizationOptions = [.alert, .badge, .sound]
        center.requestAuthorization(options: options) {
            granted, error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
    @IBAction func morningButtonPressed(_ sender: Any) {
        requestNotificationAuthorization()
    }
    @IBAction func sendNotification(_ sender: Any) {
        
        //let quote = quoteViewController().notification_quote()
        
        print("sendNotificationButton button got called")
        notificationPublisher.sendNotification(title: "Good morning", subtitle: "Your daily quote is ready", body: "", badge: 1, delayInterval: 61)
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
