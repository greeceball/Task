//
//  TaskDetailTableViewController.swift
//  Task
//
//  Created by Colby Harris on 3/4/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class TaskDetailTableViewController: UITableViewController {

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var dueDateLabel: UITextField!
    @IBOutlet weak var notesTextFieldLabel: UITextView!
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
    }
    
    // landing Pad
    var task: Task?
    var dueDateValue: Date?

    
    func updateViews() {
        
    }
}
