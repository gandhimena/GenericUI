//
//  GenericTableView.swift
//  FunctionalUI
//
//  Created by spy chatter on 3/2/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

class BaseTableViewController<T: UITableViewCell, U>: UITableViewController {
    
    let cell = "Cell"
    
    var items = [U]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(T.self, forCellReuseIdentifier: cell)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cell, for: indexPath) as! BaseTableViewCell<U>
        
        let item = items[indexPath.row]
        cell.item = item
        return cell
    }
}

class BaseTableViewCell<U>: UITableViewCell {
    var item: U!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){}
    
    
}


class BaseViewController <T: UITableViewCell, U>: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let cellID = "Cell"
    
    var items = [U]()
    
    var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(T.self, forCellReuseIdentifier: cellID)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        
    }
    
    
    //UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! BaseTableViewCell<U>
        let item = items[indexPath.row]
        cell.item = item
        return cell
    }
    
    //UITableViewDelegate
    
    
}
