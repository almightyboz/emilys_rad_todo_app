//
//  ViewController.swift
//  rad_todo_app
//
//  Created by Emily Bosakowski on 6/27/18.
//  Copyright © 2018 Emily Bosakowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var itemsIndexView: UITableView!
    @IBAction func completionToggle(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemsIndexView.dataSource = self
        itemsIndexView.delegate = self
        
        ItemFunctions.readItems(completion:  {
            self.itemsIndexView.reloadData()
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return Data.itemModels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if let todoTitleLabel = cell.viewWithTag(1) as? UILabel {
            todoTitleLabel.text = Data.itemModels[indexPath.row].title
        }
        
        if let todoCompletionToggle = cell.viewWithTag(2) as? UISwitch {
            let shouldBeOn = indexPath.row % 2 == 0
            todoCompletionToggle.setOn(shouldBeOn, animated: false)
        }
        
        
        return cell
    }

}

