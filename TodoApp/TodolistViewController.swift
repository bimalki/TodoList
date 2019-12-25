//
//  TodolistViewController.swift
//  TodoApp
//
//  Created by Hiroto Yuba on 2019/12/25.
//  Copyright © 2019 Hiroto Yuba. All rights reserved.
//

import UIKit

class TodolistViewController: UIViewController, UITableViewDataSource,UITableViewDelegate  {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    var toDOItems : [TodoItemModel] = [TodoItemModel] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        
        tableView.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDOItems.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let toDoItem = toDOItems[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItem")!
        
        cell.detailTextLabel?.text = toDoItem.isComplete ? "complete" : "Incomplete"
        
        return cell
    }
}
