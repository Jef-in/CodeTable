//
//  ViewController.swift
//  codeTableView
//
//  Created by Jefin on 03/05/19.
//  Copyright © 2019 jefin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let tableview = UITableView()
    var safeArea:UILayoutGuide!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        safeArea = view.safeAreaLayoutGuide
        setupTableView()
      
    }
    func setupTableView() {
        
        view.addSubview(tableview)
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        tableview.leftAnchor.constraint(equalTo: safeArea.leftAnchor).isActive = true
        tableview.rightAnchor.constraint(equalTo: safeArea.rightAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
        tableview.delegate = self
        tableview.dataSource = self
        tableview.reloadData()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if( !(cell != nil))
        {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        }
        cell?.textLabel?.text = "Table without Storyboard Design"
        return cell ?? UITableViewCell()
    }

}

