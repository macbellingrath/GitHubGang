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
    
    
        
    
    var indexPath: NSIndexPath? {
        didSet {
            self.configureView()
        }
    }
    
    
    func configureView() {
        
        if let indxpth  = self.indexPath {
    
            let user = users[indxpth.row]
            
             if let  fNameLabel = self.fullNameLabel, let locLabel = self.locationLabel, let bLabel = self.bioLabel, let fllwrsLabel = self.followersLabel, let fllwngLabel = self.followingLabel, let rpocOunt = self.repoCountLabel, let gstLabel = self.gistCountLabel {
            
            if let name = user["name"] as? String {
                if let location = user["location"] as? String {
                    if let bio = user["bio"] as? String {
                        if let followers = user["followers"] as? Int {
                            if let following = user["following"] as? Int {
                                if let repoCount = user["public_repos"] as? Int {
                                    if let gists = user["public_gists"] as? Int {

                                        gstLabel.text = "Gists: " + String(gists)
                                    }
                                    rpocOunt.text = "Repos: " + String(repoCount)
                                }
                                fllwngLabel.text = "Following: " + String(following)
                            }
                            fllwrsLabel.text = "Followers: " + String(followers)
                        }
                        bLabel.text = bio
                    }
                    locLabel.text = location
                }
                fNameLabel.text = name
            }
        }
            if let avatarURL = user["avatar_url"] as? String {
                if let url = NSURL(string: avatarURL) {
                    dispatch_async(dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0), { () -> Void in
                        if let data = NSData(contentsOfURL: url) {
                            if let image = UIImage(data: data) {
                                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                                    self.userImageView.contentMode = UIViewContentMode.ScaleAspectFit
                                    self.userImageView.image = image
                                })
                            }
                        }
                    })
                    
                }
            }
    }
    
}

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureView()

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
