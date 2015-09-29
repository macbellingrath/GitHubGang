//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class myClass {
    
    class func doA() {
        print(self)
    }
    static func doB() {
        print(self)
    }
    init() {
        
    }
}

myClass.doA()
myClass.doB()


////////////////////////////////////////
////////////// Stuff //////////////////
//////////////////////////////////////



let API_ROOT = "https://api.github.com"

let myProfileURL   = API_ROOT + "/users/macbellingrath"




let users: [[String: AnyObject?]] = [
    [ "login": "macbellingrath",
        "id": 10351428,
        "avatar_url": "https://avatars.githubusercontent.com/u/10351428?v=3",
        "gravatar_id": "",
        "url": "https://api.github.com/users/macbellingrath",
        "html_url": "https://github.com/macbellingrath",
        "followers_url": "https://api.github.com/users/macbellingrath/followers",
        "following_url": "https://api.github.com/users/macbellingrath/following{/other_user}",
        "gists_url": "https://api.github.com/users/macbellingrath/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/macbellingrath/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/macbellingrath/subscriptions",
        "organizations_url": "https://api.github.com/users/macbellingrath/orgs",
        "repos_url": "https://api.github.com/users/macbellingrath/repos",
        "events_url": "https://api.github.com/users/macbellingrath/events{/privacy}",
        "received_events_url": "https://api.github.com/users/macbellingrath/received_events",
        "type": "User",
        "site_admin": false,
        "name": "Mac Bellingrath",
        "company": nil,
        "blog": "macbellingrath.com",
        "location": "Nashville, TN",
        "email": nil,
        "hireable": true,
        "bio": "I love Swift.",
        "public_repos": 45,
        "public_gists": 0,
        "followers": 2,
        "following": 16,
        "created_at": "2014-12-30T17:53:38Z",
        "updated_at": "2015-09-25T13:30:24Z"]
]





class GitHubRequest: NSObject {
    
    
    func requestUserInfo(username: String,  Compltion completion: (responseInfo: AnyObject?) -> ()) {
        
        let userURL = API_ROOT + "/users/" + username
        
        print(userURL)
        
        if let url = NSURL(string: userURL) {
            
            let request = NSURLRequest(URL: url)
            
            let task =  NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { (data,
                
                response, error) -> Void in
                
                if let data = data {
                    
                try! NSJSONSerialization.JSONObjectWithData(data, options: .MutableContainers)
                    
                
            
                
                }
                
                    print(data)
                
            })
            
            task.resume()
        }
        
    }
    
    class func request(info: [String: AnyObject], completion: (responseInfo: AnyObject?) -> ()) {
        
        
        }
}
















