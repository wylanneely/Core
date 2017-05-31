//
//  Song+Convenience.swift
//  PlaylistWithCoreData
//
//  Created by ALIA M NEELY on 5/31/17.
//  Copyright © 2017 babycheva. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    
   @discardableResult convenience init(title: String, artistName: String, playlist: Playlist, context: NSManagedObjectContext = CoreDataStack.context){
        
        self.init(context:context)
        
        
        self.title = title
        self.artistName = artistName
        self.playlist = playlist
    }
    
    
}
