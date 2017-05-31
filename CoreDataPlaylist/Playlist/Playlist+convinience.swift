//
//  Playlist+convinience.swift
//  PlaylistWithCoreData
//
//  Created by ALIA M NEELY on 5/31/17.
//  Copyright © 2017 babycheva. All rights reserved.
//

import Foundation
import CoreData


extension Playlist {
    
  @discardableResult convenience init(name:String,
                     context: NSManagedObjectContext = CoreDataStack.context ){
        self.init(context: context)
        
        self.name = name
        
    }
    
    
}
