//
//  Playlist+Convenience.swift
//  PlaylistCoreData
//
//  Created by Cody on 3/13/19.
//  Copyright © 2019 Cody Adcock. All rights reserved.
//

import Foundation
import CoreData

extension Playlist{
    @discardableResult
    convenience init(title: String, songs: [Song] = [], context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.title = title
        
    }
    
}
