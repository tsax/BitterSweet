//
//  LookViewController.swift
//  BitterSweet
//
//  Created by Tushar Saxena on 5/29/15.
//  Copyright (c) 2015 Tushar Saxena. All rights reserved.
//

import UIKit

class LookViewController: UIViewController {

    @IBOutlet weak var MatteOrGlossy: UISegmentedControl!
    @IBOutlet weak var PowderyCoating: UISwitch!
    @IBOutlet weak var IrregularCoating: UISwitch!
    
    @IBAction func NextClick(sender: AnyObject) {
        var matteOrGlossy: String
        switch(MatteOrGlossy.selectedSegmentIndex)
        {
        case 0: matteOrGlossy = "Matte 1"
            break
        case 1: matteOrGlossy = "Matte 2"
            break
        case 2: matteOrGlossy = "Neither"
            break
        case 3: matteOrGlossy = "Glossy 2"
            break
        case 4: matteOrGlossy = "Glossy 1"
            break
        default: matteOrGlossy = "Neither"
        }
        
        var whitePowderyCoating = PowderyCoating.selected
        var irregularWhiteCoating = IrregularCoating.selected
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(matteOrGlossy, forKey: "matteOrGlossy")
        defaults.setBool(whitePowderyCoating, forKey: "whitePowderyCoating")
        defaults.setBool(irregularWhiteCoating, forKey: "irregularWhiteCoating")
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
