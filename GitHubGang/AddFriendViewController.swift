//
//  AddFriendViewController.swift
//  GitHubGang
//
//  Created by Mac Bellingrath on 9/28/15.
//  Copyright © 2015 Mac Bellingrath. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {

    @IBAction func savebuttonPressed(sender: UIButton) {
        
    }
        
        override func viewDidLoad() {
        super.viewDidLoad()
            title = "Add"
            GitHubRequest.requestUserInfo("asdfsdf") { (responseInfo) -> () in
                print(responseInfo)
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
