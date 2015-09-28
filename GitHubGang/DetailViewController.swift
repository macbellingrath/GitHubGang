//
//  DetailViewController.swift
//  GitHubGang
//
//  Created by Mac Bellingrath on 9/28/15.
//  Copyright © 2015 Mac Bellingrath. All rights reserved.
//


//        full name
//        location
//        bio
//        followers
//        following
//        repo count
//        gist count
//
import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var userImageView: UIImageView!

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var bioLabel: UILabel!
    
    @IBOutlet weak var followersLabel: UILabel!
    
    @IBOutlet weak var followingLabel: UILabel!
    
    @IBOutlet weak var repoCountLabel: UILabel!
    
    @IBOutlet weak var gistCountLabel: UILabel!
    
    
    var user: AnyObject?  {
        didSet {
            self.configureView()
            
        }
        
    }
    
    
    
    func configureView() {
        if let detail = self.user {
            if let  fNameLabel = self.fullNameLabel, let locLabel = self.locationLabel, let bLabel = self.bioLabel, let fllwrsLabel = self.followersLabel, let fllwngLabel = self.followingLabel, let rpocOunt = self.repoCountLabel, let gstLabel = self.gistCountLabel {
               
                
            }
            
        }
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
