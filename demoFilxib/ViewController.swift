//
//  ViewController.swift
//  demoFilxib
//
//  Created by Anh vũ on 6/22/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number = [Int](1...10)
    
   @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

}
  private func setupxebCell(){
    tableView.register(UINib.init(nibName: "MissionCell", bundle: nil), forCellReuseIdentifier: "MissionCell")
    }
}

