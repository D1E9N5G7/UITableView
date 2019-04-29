//
//  ViewController.swift
//  UITableView
//
//  Created by Apple on 2019/4/28.
//  Copyright © 2019 com.deng. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //let weeks = ["Monday","Tuesday","Wednesday","Thrusday","Friday","Saturday","Sunday"]
    let months = ["January","February","March","April","May","June","July","Auguest","September","October","November","December"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let mUITableView = UITableView(frame: self.view.bounds)
        mUITableView.delegate = self
        mUITableView.dataSource = self
        self.view.addSubview(mUITableView)
        
        let index = IndexPath(row: 10, section: 0)
        mUITableView.scrollToRow(at: index
            , at: UITableView.ScrollPosition.bottom, animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return months.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseCellId = "reuse"
        var cell = tableView.dequeueReusableCell(withIdentifier: reuseCellId)
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseCellId)
        }
        let index = (indexPath as NSIndexPath).row
        
        cell?.textLabel?.text = months[index]
        cell?.detailTextLabel?.text = "description on title"
        
        let star = UIImage(named: "star")
        let star_h = UIImage(named: "star_h")
        cell?.imageView?.image = star
        cell?.imageView?.highlightedImage = star_h
        cell?.backgroundColor = UIColor.lightGray
        return cell!
    }
    

}

