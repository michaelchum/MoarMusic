//
//  ViewController.swift
//  MoarMusic
//
//  Created by Jakub Tucholski on 7/12/14.
//  Copyright (c) 2014 TeamAwesome. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet
    var tableView: UITableView
    var items: [Dictionary <String, String>] = [[
        "name": "Fancy",
        "artist": "Iggy Azalea Featuring Charli XCX",
        "itunes": "itmss://itunes.apple.com/gb/album/fancy-feat.-charli-xcx-single/id813869376",
        "rank_this_week": "1",
        "rank_last_week": "1",
        "album_image": "http://a2.mzstatic.com/us/r30/Features6/v4/30/17/8b/30178be8-fafe-518b-b321-d11300591d35/dj.kjhnbgrk.170x170-75.jpg"
    ], [
        "name": "Rude",
        "artist": "MAGIC!",
        "itunes": "itmss://itunes.apple.com/us/album/rude-single/id723922024",
        "rank_this_week": "2",
        "rank_last_week": "2",
        "album_image": "http://a1.mzstatic.com/us/r30/Music2/v4/37/56/79/375679a8-9a7e-e678-7c99-a3fe6a7f68a3/886444607650.170x170-75.jpg"
    ]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }


    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel.text = self.items[indexPath.row]["name"]
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("You selected cell #\(indexPath.row)!")
    }
}

