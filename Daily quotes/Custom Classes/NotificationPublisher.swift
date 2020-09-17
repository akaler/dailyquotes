//
//  NotificationPublisher.swift
//  Daily quotes
//
//  Created by Abhijot Kaler on 11/09/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import UIKit
import UserNotifications

class NotificationPublisher: NSObject {
    func sendNotification(title: String, subtitle: String, body:String, badge: Int?, dateComponent: DateComponents?) //, delayInterval: Int?
    {
        print("sendNotification function insdie of class Notification Publisher got called")
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = title
        notificationContent.subtitle = subtitle
        notificationContent.body = body
        /*
        var delayTimeTrigger: UNTimeIntervalNotificationTrigger?
        if let delayInterval  = delayInterval {
            delayTimeTrigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(delayInterval), repeats: true)
        }
        */
        
        
        //var dateComponent = DateComponents()
        //dateComponent.hour = 21
        //dateComponent.minute = 57
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponent!, repeats: true)
        
 
 
        if let badge = badge {
            var currentBadgeCount = UIApplication.shared.applicationIconBadgeNumber
            currentBadgeCount += badge
            notificationContent.badge = NSNumber(integerLiteral: currentBadgeCount)
        }
        notificationContent.sound = UNNotificationSound.default
        
        UNUserNotificationCenter.current().delegate = self
        
        let request = UNNotificationRequest(identifier: "Daily Quotes", content: notificationContent, trigger: trigger)
        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}

extension NotificationPublisher : UNUserNotificationCenterDelegate{
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification:
        UNNotification, withCompletionHandler completionHandler: @escaping
        (UNNotificationPresentationOptions) -> Void) {
        print("The Notification is about to be presented")
        completionHandler([.badge, .sound, .alert])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        let identifier = response.actionIdentifier
        switch identifier{
        case UNNotificationDismissActionIdentifier:
            print("the notification was dismissed")
            completionHandler()
        case UNNotificationDefaultActionIdentifier:
            
            print("the user opened the app from notification")
            completionHandler()
        default:
            print("the default case was called")
            completionHandler()
        }
    }
}
