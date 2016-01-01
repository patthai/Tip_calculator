//
//  ViewController.swift
//  Tippy
//
//  Created by PP on 12/29/15.
//  Copyright © 2015 Patthai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var currencyControl: UISegmentedControl!
    @IBOutlet weak var currencyLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tip Calculator"
        // Do any additional setup after loading the view, typically from a nib.
    tipLabel.text = "$0.00"
    totalLabel.text = "$0.00"
    currencyLabel.text = "$"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func billField(sender: AnyObject) {
        var currency_data = ["$", "€", "¥"]
        var currency = currency_data[currencyControl.selectedSegmentIndex]
        

        
        
        var tipPercentages = [0.18, 0.20, 0.22]
        var tipPercentage = tipPercentages [tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        currencyLabel.text = String(format: "%@", currency)
        tipLabel.text = String(format: "%@%.2f", currency, tip)
        totalLabel.text = String(format:"%@%.2f", currency, total)
        
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
}

