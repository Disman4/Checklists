//
//  ViewController.swift
//  Checklists
//
//  Created by Tanaka Mawoyo on 01.05.24.
//

import UIKit

class ChecklistsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK  : - TableView Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0{
            label.text = "Walk with me"
        }else if indexPath.row == 1{
            label.text = "Take a shower"
        }else if indexPath.row  == 2{
            label.text = "Go to gym"
        }else if indexPath.row  == 3{
            label.text = "Talk to mom"
        }else if indexPath.row  == 4{
            label.text = "Call Fabian"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
    }
    
   tableView.deselectRow(at: indexPath, animated: true)
}




}

