//
//  ViewController.swift
//  UITableView
//
//  Created by CoderDream on 2019/3/19.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView!
    
    var dataArray: Array<String>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView = UITableView(frame: view.frame)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        dataArray = Array()
        for i in 0 ..< 50 {
            dataArray?.append(String(format: "第%d行数据", i))
        }
        
        view.addSubview(tableView)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = dataArray![indexPath.row]
        return cell
    }
    
}

