//
//  TaskController.swift
//  Task
//
//  Created by Colby Harris on 3/4/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import Foundation
import CoreData

class TaskController {
    
    static let sharedInstance = TaskController()
    
    var tasksArray: [Task] = []
    
    var mockTasks: [Task] {
    
    let task1 = Task(name: "Wake up", notes: "Need to wake up", due: Date())
    let task2 = Task(name: "Eat Lunch")
    let task3 = Task(name: "Go to bed")
    task3.isComplete = true
    return[task1, task2, task3]
    }
    
    init() {
        tasksArray = fetchTasks()
    }
    
    
    func add(taskWithName name: String, notes: String?, due: Date?) {
        
    }
    func update(task: Task, name: String, notes: String?, due: Date?) {
        
    }
    func remove(task: Task) {
        
    }
    func saveToPersistentStore() {
        
    }
    func fetchTasks() -> [Task] {
        
      
        return mockTasks
    }
    
}
