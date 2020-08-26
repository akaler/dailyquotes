//
//  Philosophers+CoreDataProperties.swift
//  
//
//  Created by Abhijot Kaler on 25/08/20.
//
//

import Foundation
import CoreData


extension Philosophers {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Philosophers> {
        return NSFetchRequest<Philosophers>(entityName: "Philosophers")
    }

    @NSManaged public var quotes: [NSString]?

}
