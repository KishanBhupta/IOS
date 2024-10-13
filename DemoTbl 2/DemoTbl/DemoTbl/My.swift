
//  My.swift
//  DemoTbl
//
//  Created by student on 08/10/24.
//  Copyright © 2024 student. All rights reserved.
//

import UIKit

class My: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
//        var cell = UITableViewCell(style: .default, reuseIdentifier: "")
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyCell
        
        cell.lblLeft.text = "LEFT \(indexPath.row)"
        cell.lblRight.text = "RIGHT \(indexPath.row)"
        if(indexPath.row%2==0)
        {
            cell.backgroundColor = UIColor.red
        }
        return cell
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
