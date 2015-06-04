//
//  TastedChocolateViewController.swift
//  BitterSweet
//
//  Created by Tushar Saxena on 5/29/15.
//  Copyright (c) 2015 Tushar Saxena. All rights reserved.
//

import UIKit

class TastedChocolateViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var namesOfChocolates = ["Michel Cluizel", "Jacques Torres", "Domori", "Valrhona"]
    
    @IBOutlet weak var tastedChocolatesTableView: UITableView!
    
    override func viewDidLoad() {
        tastedChocolatesTableView.delegate = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return namesOfChocolates.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell:UITableViewCell = tastedChocolatesTableView.dequeueReusableCellWithIdentifier("tastedChocolateCell") as! UITableViewCell
        
        cell.textLabel?.text = self.namesOfChocolates[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(namesOfChocolates[indexPath.row], forKey: "selectedChocolateName")
        performSegueWithIdentifier("tastedChocolateDetailsSegue", sender: nil)

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
