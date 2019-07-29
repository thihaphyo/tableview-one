//
//  EasyTableViewController.swift
//  TableViewEasy
//
//  Created by Phyo Thiha on 29/07/2019.
//  Copyright © 2019 padc. All rights reserved.
//

import Foundation
import UIKit

class EasyTableViewController : UIViewController {
    
    @IBOutlet weak var tableViewEasy: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //register cell
        
        tableViewEasy.register(UINib(nibName: String(describing: EasyTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: EasyTableViewCell.self))
    }
    
    
}

extension EasyTableViewController : UITableViewDelegate,UITableViewDataSource {
    
    
    /**
     To Show Row Count in TableView
     **/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    /**
     For DataBinding
     **/
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: EasyTableViewCell.self)
            , for: indexPath) as! EasyTableViewCell
        cell.bindData(name: "Row \(indexPath.row)")
        // cell.textLabel?.text = "Row \(indexPath.row)"
        return cell
    }
}
