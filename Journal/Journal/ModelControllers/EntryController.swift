//
//  EntryController.swift
//  Journal
//
//  Created by Jonathan T. Miles on 8/9/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

class EntryController {
    
    var entries: [Entry] = []
    
    let baseURL: URL = URL(string: "https://jonathantmilesjournal.firebaseio.com/")!
    
    // PUT
    func put(entry: Entry, completion: @escaping (Error?) -> Void) {
        let url = baseURL
            .appendingPathComponent(entry.identifier)
            .appendingPathExtension("json")
        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        
        do {
            request.httpBody = try JSONEncoder().encode(entry)
        } catch {
            NSLog("Unable to 'put' data: \(error)")
            completion(error)
            return
        }
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            if let error = error {
                NSLog("Error with dataTask: \(error)")
                completion(error)
                return
            }
            completion(nil)
        }.resume()
    }
    
    //CREATE
    func createEntry(title: String, bodyText: String, completion: @escaping (Error?) -> Void) {
        let entry = Entry(title: title, bodyText: bodyText)
        // entries.append(entry)
        put(entry: entry, completion: completion)
    }
    
}
