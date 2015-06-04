//
//  SelectedChocolateDetailsViewController.swift
//  BitterSweet
//
//  Created by Tushar Saxena on 5/29/15.
//  Copyright (c) 2015 Tushar Saxena. All rights reserved.
//

import UIKit

class SelectedChocolateDetailsViewController: UIViewController {

    @IBOutlet weak var ChocolateName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
        if let chocolateName: String = defaults.objectForKey("selectedChocolateName") as? String
        {
            ChocolateName.text = chocolateName
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
