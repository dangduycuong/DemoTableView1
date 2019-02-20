//
//  MasterViewController.swift
//  DemoTableView1
//
//  Created by duycuong on 2/20/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

import UIKit

class MasterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    
    let dataArray = [
        [Int](0...49),
        [Int](80...110)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
        case 0:
            return dataArray[0].count
        default:
            return dataArray[1].count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let sectionName: String
        switch section {
        case 0:
            //sectionName = NSLocalizedString("mySectionName", comment: "mySectionName kokoko")
            sectionName = String("Section 0")
            //sectionName = NSLocalizedString("myOtherSectionName", comment: "myOtherSectionName")
            
        default:
            sectionName = String("Section 1")
        }
        
        
    
        return sectionName
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        switch (indexPath.section) {
        case 0:
            cell.textLabel?.text = String(dataArray[0][indexPath.row])
        default:
            cell.textLabel?.text = String(dataArray[1][indexPath.row])
        }
        return cell
    }
    
}


