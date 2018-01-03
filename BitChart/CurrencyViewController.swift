//
//  CurrencyViewController.swift
//  BitChart
//
//  Created by Chris Chan on 3/1/2018.
//  Copyright © 2018 IGPSD Ltd. All rights reserved.
//

import UIKit

class CurrencyViewController: UITableViewController {
    
    var currencyArray: Array<Currency>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.backgroundColor = UIColor(red: 36/255, green: 59/255, blue: 96/255, alpha: 1)
        
        currencyArray = Array()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let currency = Currency()
        currency.title = "BITCOIN"
        currency.code = "BTC"
        
        currencyArray?.append(
            currency
        )
        
        let currency2 = Currency()
        currency2.title = "ETHEREUM"
        currency2.code = "ETH"
        
        currencyArray?.append(
            currency2
        )
        
        let currency3 = Currency()
        currency3.title = "LITECOIN"
        currency3.code = "LTH"
        
        currencyArray?.append(
            currency3
        )
        
        let currency4 = Currency()
        currency4.title = "DATA"
        currency4.code = "DAT"
        
        currencyArray?.append(
            currency4
        )
        
        let currency5 = Currency()
        currency5.title = "XMR"
        currency5.code = "XMR"
        
        currencyArray?.append(
            currency5
        )
    }
    
    func loadCurrency() {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencyArray!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CurrencyCell", for: indexPath) as! CurrencyCell
        
        cell.backgroundColor = UIColor(red: 36/255, green: 59/255, blue: 96/255, alpha: 1)
        cell.blockView.backgroundColor = UIColor(red: 44/255, green: 68/255, blue: 101/255, alpha: 1)
        let currency = currencyArray?[indexPath.row] as Currency?
        cell.currencyLabel?.text = currency?.title as String?
        cell.rateLabel?.text = "\(currency?.amount! as! NSNumber)"
        cell.changeLabel?.text = "\(currency?.rateChange! as! NSNumber)"
        
        return cell
    }
}


