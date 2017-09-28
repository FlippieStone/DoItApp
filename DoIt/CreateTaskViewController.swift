//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Flippie Stone on 9/27/17.
//  Copyright © 2017 Flippie Stone. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //Create Task from outlet info
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        //add task to array in prev view conntroller
        
        
        
        navigationController!.popViewController(animated: true)
    }
    
}
