//
//  CurrencyViewController.swift
//  BitChart
//
//  Created by Chris Chan on 3/1/2018.
//  Copyright © 2018 IGPSD Ltd. All rights reserved.
//

import UIKit

class CurrencyViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CurrencyCell", for: indexPath) as! CurrencyCell
        
        cell.changeLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
        
        return cell
    }
}


