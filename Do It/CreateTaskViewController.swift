//
//  CreateTaskViewController.swift
//  Do It
//
//  Created by Brian R Clowes on 2017-12-10.
//  Copyright © 2017 Brian R Clowes. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var txtNewTask: UITextField!
    @IBOutlet weak var swcImportant: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnAddTaskTapped(_ sender: Any) {
        let task = Task()
        task.name = txtNewTask.text!
        task.important = swcImportant.isOn
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    

}
