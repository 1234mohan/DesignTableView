//
//  ViewController.swift
//  TableViewController
//
//  Created by CA MOHANA RAJU on 1/24/16.
//  Copyright © 2016 Sparity. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
   var names = ["tajmahal","waterhill","chinawall"]
   var images = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3")]
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell",forIndexPath: indexPath) as! CustomCell
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.redColor()
        }
        else {
            cell.backgroundColor = UIColor.blackColor()
        }
        
        cell.CellImage.image = images[indexPath.row]
        cell.CellLabel.text = names[indexPath.row]
       
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            names.removeAtIndex(indexPath.row)
            images.removeAtIndex(indexPath.row)
            self.myTableView.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cellNames = names[indexPath.row]
        let cellImages = images[indexPath.row]
        
        let detailedViewController: DetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewController
        
        detailedViewController.nameString = cellNames
        detailedViewController.imagesView = cellImages
        
        self.presentViewController(detailedViewController, animated: true, completion: nil)
        
    }

}

