//
//  User.swift
//  FunctionalUI
//
//  Created by spy chatter on 3/2/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import Foundation

struct User {
    
    var name: String
    var location: String
    var image: String?
    
    init(name: String, location: String, image: String?) {
        self.name = name
        self.location = location
        self.image = image
    }
    
}
