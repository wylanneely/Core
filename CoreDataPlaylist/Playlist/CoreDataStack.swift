//
//  CoreDataStack.swift
//  PlaylistWithCoreData
//
//  Created by ALIA M NEELY on 5/31/17.
//  Copyright © 2017 babycheva. All rights reserved.
//

import Foundation
import CoreData

enum CoreDataStack {
    
    
    static let container: NSPersistentContainer = {
        
        
        let container = NSPersistentContainer(name: "PlaylistWithCoreData")
        container.loadPersistentStores() { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    static var context: NSManagedObjectContext { return container.viewContext }
}
