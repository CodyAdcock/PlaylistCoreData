//
//  CoreDataStack.swift
//  PlaylistCoreData
//
//  Created by Cody on 3/13/19.
//  Copyright © 2019 Cody Adcock. All rights reserved.
//

import Foundation
import CoreData

enum CoreDataStack{
    
    static let container: NSPersistentContainer = {
     
        let container = NSPersistentContainer(name: "PlaylistCoreData")
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error{
                fatalError("Failed to Load Persistent Store \(error)")
            }
        })
        return container
    }()
    static var context: NSManagedObjectContext{
        return container.viewContext
    }
}

