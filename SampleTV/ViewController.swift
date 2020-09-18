//
//  ViewController.swift
//  SampleTV
//
//  Created by vmulugu on 9/16/20.
//  Copyright © 2020 vmulugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let namesArray = ["Veera","babu","Krishna","kumari","koti","Abhi"]
    let namesDetailsArray = ["23453","32453","234523","2345","koti","Abhi"]
    
    // MARK: - View Controller methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        //           tableView.backgroundColor = UIColor.red
    
    }
    
    
    
    // MARK: - UITableview Datasource and delegate methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifer", for: indexPath) as! NamesTableViewCell
        
        cell.categoryLabel.text = "\(namesArray[indexPath.row])"
        cell.includedLabel.text = namesDetailsArray[indexPath.row]
        cell.usedLabel.text = namesDetailsArray[indexPath.row]
        cell.remainingLabel.text = namesDetailsArray[indexPath.row]
        cell.profileImage.image = UIImage(named:"profile")
        
        
        
        
        //        cell?.textLabel?.text = "The SNO \(indexPath.row): Name \(namesArray[indexPath.row])"
        //        cell?.detailTextLabel?.text = namesDetailsArray[indexPath.row]
//                cell.backgroundColor = .lightGray
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header Section Title"
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "TitleForFooterInSection Title"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.00
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        (view as! UITableViewHeaderFooterView).contentView.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        
        (view as! UITableViewHeaderFooterView).textLabel?.textColor = UIColor.white
    }
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        (view as! UITableViewHeaderFooterView).contentView.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        
        (view as! UITableViewHeaderFooterView).textLabel?.textColor = UIColor.white
    }
    
    //    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //        (view as! UITableViewHeaderFooterView).contentView.backgroundColor = UIColor.black.withAlphaComponent(0.4)
    //        (view as! UITableViewHeaderFooterView).textLabel?.textColor = UIColor.white
    //
    //    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
//    
}

