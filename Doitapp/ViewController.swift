//
//  ViewController.swift
//  Doitapp
//
//  Created by Jordan O'Toole on 27/4/17.
//  Copyright © 2017 Jordan O'Toole. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
   
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        
        
        return cell

    }
    func makeTasks () -> [Task] {
        let task1 = Task()
        task1.name = "walk the dog"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Coffee Pods"
        task2.important = true
    
        let task3 = Task()
        task3.name = "Water plants"
        task3.important = false
    
        return [task1,task2,task3]
        
    }
    
    @IBAction func plustapped(_ sender: Any) {
    performSegue(withIdentifier: "addsegue", sender: nil)
    
    }
        
    }
    


    



