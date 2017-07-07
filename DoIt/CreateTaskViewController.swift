//
//  CreakTestViewController.swift
//  DoIt
//
//  Created by Jeffrey Litzinger on 7/1/17.
//  Copyright © 2017 Jeffrey Litzinger, MD. All rights reserved.
//

import UIKit

class CreakTestViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        taskNameTextField.becomeFirstResponder()
    }

    @IBAction func addTapped(_ sender: Any) {
        // Creaste a task from the Outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous ViewController
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
   
}
