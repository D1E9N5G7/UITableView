//
//  ViewController.swift
//  UITableView
//
//  Created by Apple on 2019/4/28.
//  Copyright © 2019 com.deng. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let mUITableView = UITableView(frame: self.view.bounds)
        mUITableView.delegate = self
        mUITableView.dataSource = self
        self.view.addSubview(mUITableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseCellId = "reuse"
        var cell = tableView.dequeueReusableCell(withIdentifier: reuseCellId)
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseCellId)
        }
        cell?.textLabel?.text = "title"
        cell?.detailTextLabel?.text = "description on title"
        return cell!
    }
    

}

