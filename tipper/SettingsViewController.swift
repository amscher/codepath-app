//
//  SettingsViewController.swift
//  tipper
//
//  Created by Montana Scher on 9/22/16.
//  Copyright © 2016 Montana Scher. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
   @IBOutlet weak var tipOptionsSegment: UISegmentedControl!

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("view will appear")
   // let defaults = UserDefaults.standard
   // let tipIndxValue = defaults.object(forKey: "tip_indx") ?? 0
   // tipOptionsSegment.selectedSegmentIndex = tipIndxValue as! Int
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let defaults = UserDefaults.standard
    let tipIndxValue = defaults.object(forKey: "tip_indx") ?? 0
    tipOptionsSegment.selectedSegmentIndex = tipIndxValue as! Int

        // Do any additional setup after loading the view.
  }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
  }
  
  @IBAction func onTipValueChange(_ sender: AnyObject) {
    let defaults = UserDefaults.standard
    defaults.set(tipOptionsSegment.selectedSegmentIndex, forKey: "tip_indx")
    defaults.synchronize()
  }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
