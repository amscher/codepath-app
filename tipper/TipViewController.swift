//
//  ViewController.swift
//  tipper
//
//  Created by Montana Scher on 9/18/16.
//  Copyright © 2016 Montana Scher. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
  
  @IBOutlet weak var tipLabel: UILabel!
  @IBOutlet weak var totalLabel: UILabel!
  @IBOutlet weak var tipOptionsSegment: UISegmentedControl!
  @IBOutlet weak var billField: UITextField!
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("view will appear")
    let defaults = UserDefaults.standard
    let tipIndxValue = defaults.object(forKey: "tip_indx") ?? 0
    tipOptionsSegment.selectedSegmentIndex = tipIndxValue as! Int
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func onTipValueChange(_ sender: AnyObject) {
    let tipPercentages = [0.15, 0.2, 0.25]
    
    let bill = Double(billField.text!) ?? 0
    let tip = bill * tipPercentages[tipOptionsSegment.selectedSegmentIndex]
    let total = bill + tip;
    
    tipLabel.text = String(format:"$%.2f", tip)
    totalLabel.text = String(format:"$%.2f", total)
  }
  
  @IBAction func onTap(_ sender: AnyObject) {
    view.endEditing(true)
  }
}
