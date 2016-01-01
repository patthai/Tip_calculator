//
//  SettingViewController.swift
//  Tip calculator
//
//  Created by PP on 12/31/15.
//  Copyright © 2015 Patthai. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var currencyControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sourcecode(sender: AnyObject) {
        if let url = NSURL(string: "https://github.com/patthai/Tip_calculator") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
