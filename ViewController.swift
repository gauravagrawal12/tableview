//
//  ViewController.swift
//  iosDay14tableView
//
//  Created by Felix 09 on 28/08/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var nameArray = ["Nikita","Nisha","Nilam","Nitu","Niraja"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = nameArray[indexPath.row]
        let switch1 = UISwitch()
        cell.accessoryView = switch1
        switch1.addTarget(self, action: #selector(switchPressed(sender:)), for: .valueChanged)
        switch1.accessibilityLabel = cell.textLabel?.text
        
        
        return cell
    }
    @objc func switchPressed(sender:UISwitch)
    {
        if sender.isOn
        {
            print("Switch is on")
            print("Selected name = \(sender.accessibilityLabel!)")
        }
        else
        {
            print("Switch is off")
        }
        
    }
    
     

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

