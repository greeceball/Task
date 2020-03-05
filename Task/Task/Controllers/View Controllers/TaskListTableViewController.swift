//
//  TaskListTableViewController.swift
//  Task
//
//  Created by Colby Harris on 3/4/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class TaskListTableViewController: UITableViewController {
    
    @IBOutlet var taskTableView: UITableView!
    
    
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        taskTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TaskController.sharedInstance.tasksArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskListCell", for: indexPath)
        let task = TaskController.sharedInstance.tasksArray[indexPath.row]
        
        cell.textLabel?.text = task.name
        cell.detailTextLabel?.text = task.dueDateAsString
        
        // Configure the cell...
        
        return cell
    }
    
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let task = TaskController.sharedInstance.tasksArray[indexPath.row]
            TaskController.sharedInstance.removeTask(task: task)
            taskTableView.deleteRows(at: [indexPath], with: .fade)
            

            
        }
        
    }








// MARK: - Navigation


override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "toTaskDetailTableVC" {
        guard let indexPath = taskTableView.indexPathForSelectedRow, let destinationViewController = segue.destination as? TaskDetailTableViewController else {return}
        let task = TaskController.sharedInstance.tasksArray[indexPath.row]
        destinationViewController.task = task
        }
    }
}
