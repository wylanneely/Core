//
//  PlaylistController.swift
//  Playlist
//
//  Created by Tetiana Babycheva on 5/24/17.
//  Copyright © 2017 babycheva. All rights reserved.
//

import Foundation
import CoreData

class PlaylistController {
    
    static let shared = PlaylistController()
        
    var playlists: [Playlist] {
        
        let request: NSFetchRequest<Playlist> = Playlist.fetchRequest()
        return (try? CoreDataStack.context.fetch(request)) ?? []
        
    }
    
    
    // CRUD
    
    func createPlaylist(withName name: String) {
        
        Playlist(name: name)
        
        saveToPersistentStore()
    }
    
 
    
    func saveToPersistentStore() {
        
        let moc = CoreDataStack.context
        do { try moc.save()  } catch {
            print("Error saving to Core Data")
        }
        
    }
    

}










