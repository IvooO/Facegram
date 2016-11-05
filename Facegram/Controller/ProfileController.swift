//
//  ProfileController.swift
//  Facegram
//
//  Created by Ivo on 06/02/16.
//  Copyright © 2016 Ivo. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    
    @IBOutlet weak var profilePic:UIImageView!
    @IBOutlet weak var postsLabel:UILabel!
    @IBOutlet weak var followersLabel:UILabel!
     @IBOutlet weak var followingLabel:UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let currentUser = Profile.currentUser {
            navigationController?.navigationBar.topItem?.title = currentUser.username
            self.postsLabel.text = "\(currentUser.posts.count)"
            self.followersLabel.text = "\(currentUser.followers.count)"
            self.followingLabel.text = "\(currentUser.following.count)"
            if let profPic = currentUser.picture {
                self.profilePic.image = profPic
                }
        }else {
            print("No user is loggedin")
        }
         }
    @IBAction func editProfile(sender: AnyObject) {
        print("User wants to edit their profile")
    
    }
     }
    
    

