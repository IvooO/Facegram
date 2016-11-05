//
//  PostModel.swift
//  Facegram
//
//  Created by Ivo on 06/02/16.
//  Copyright © 2016 Ivo. All rights reserved.
//

import UIKit

class Post {
    
    let creator:String
    let timestamp:NSDate
    let image:UIImage?
    let caption:String?
    static var feed:Array<Post>?
    
    init (creator:String, image:UIImage?,caption:String?)  {
      self.creator = creator
      self.image = image
      self.caption = caption
      timestamp = NSDate ()
    }
}

class PostCell: UITableViewCell {
@IBOutlet weak var captionLabel: UILabel!
@IBOutlet weak var imgView: UIImageView!

}

class PostHeaderCell: UITableViewCell {
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var usernameButton: UIButton!
    
}