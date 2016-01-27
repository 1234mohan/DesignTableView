//
//  DetailViewController.swift
//  TableViewController
//
//  Created by CA MOHANA RAJU on 1/24/16.
//  Copyright © 2016 Sparity. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    var nameString: String?
    var imagesView: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.name.text = nameString
        self.image.image = imagesView
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
