//
//  LikedQuotes.swift
//  Daily Quotes
//
//  Created by Abhijot Kaler on 23/09/20.
//  Copyright © 2020 KalerCorp. All rights reserved.
//

import Foundation

class LikedQuotes : NSObject, Codable{

    // Person dictionary variable
    var name: String?
    var index: Int?

    init(name: String, index: Int) { // Dictionary object
        self.name = name
        self.index = index
        super.init()
    }
/*
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: "name") as? String;
        self.index = aDecoder.decodeObject(forKey: "index") as? Int;
    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.name, forKey: "name");
        aCoder.encode(self.index, forKey: "index");
    }
 */
}
