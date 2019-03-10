//
//  ViewController.swift
//  Todoey
//
//  Created by Mark Hendrix on 3/2/19.
//  Copyright © 2019 Mark Hendrix. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["find Mike", "Buy Eggos", "Destroy Demogorgon"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]

        return cell
        
    }
    
    //MARK - Tableview Delegate Methods
    
    //This function performs operations at the selected table row/cell
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.cellForRow(at: indexPath)? .accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)? .accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)? .accessoryType = .checkmark

        }
        
        //Remove permanent color change for item selection in tableView
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    
    }



}

