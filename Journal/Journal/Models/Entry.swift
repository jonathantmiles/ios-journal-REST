//
//  entry.swift
//  Journal
//
//  Created by Jonathan T. Miles on 8/9/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

struct Entry: Equatable, Codable {
    
    init(title: String, bodyText: String, timestamp: Date = Date(), identifier: String = UUID().uuidString) {
        self.title = title
        self.bodyText = bodyText
        self.timestamp = timestamp
        self.identifier = identifier
    }
    
    var title: String
    var bodyText: String
    var timestamp: Date
    let identifier: String
    
}
