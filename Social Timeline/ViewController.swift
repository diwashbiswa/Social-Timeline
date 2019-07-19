//
//  ViewController.swift
//  Social Timeline
//
//  Created by Diwash Biswa on 7/18/19.
//  Copyright © 2019 Diwash Biswa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var listofNames = ["Isabelle", "Aja", "Diwash", "Christy", "Max", "Aja", "Isabelle", "Max"]
    var listofTasks = ["Physics Homeworks", "Exercise", "Folding laundry", "Robotics Club", "Attend CC party", "Programming Assignment 1", "Psychology Essay", "Read Lecture Notes"]
    var listOfCats = ["Academic", "Health", "Other", "Social", "Event", "Academic", "Academic", "Academic"]
    
    var listOfImages: [UIImage] = [#imageLiteral(resourceName: "isabelle"), #imageLiteral(resourceName: "aja"), #imageLiteral(resourceName: "diwash"), #imageLiteral(resourceName: "christy"), #imageLiteral(resourceName: "max"), #imageLiteral(resourceName: "aja"), #imageLiteral(resourceName: "isabelle"), #imageLiteral(resourceName: "max")]
    
    //returns the number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellnew = myTableView.dequeueReusableCell(withIdentifier: "task", for: indexPath) as! MyTableViewCell
        cellnew.taskLabel?.frame = CGRect(x: 108, y: 12, width: 286, height: cellnew.frame.height - 20)
        cellnew.taskLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        cellnew.taskLabel?.numberOfLines = 2
        
        //like/comment buttons locations
        cellnew.likeButton?.frame = CGRect(x: 200, y: 225, width: 30, height: 30)
        cellnew.commentButton?.frame = CGRect(x: 392, y: 225, width: 30, height: 30)
        
        cellnew.taskLabel?.text = "\(listofNames[indexPath.row]) completed \(listOfCats[indexPath.row]) task: \(listofTasks[indexPath.row])"
        
        
        //resize imageview
                cellnew.profilePicture?.frame = CGRect(x: 20, y: 20, width: 50, height: 50)
                cellnew.profilePicture?.layer.cornerRadius = 25  //width / 2
                cellnew.profilePicture?.layer.masksToBounds = true
                cellnew.profilePicture?.layer.borderWidth = 1
        
                cellnew.profilePicture?.image = listOfImages[indexPath.row]
        
        
        // cellnew.imageView?.image.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        //        cellnew.imageView?.image.layer.cornerRadius = self.profilePicture.frame.size.width / 2
        //        self.profilePicture.layer.masksToBounds = true
        //        self.profilePicture.layer.borderWidth = 2
        
        return cellnew
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let nameAndTask = listofNames[indexPath.row] + listofTasks[indexPath.row]
        return CGFloat(60 + (125 * nameAndTask.count / 75))
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
}


