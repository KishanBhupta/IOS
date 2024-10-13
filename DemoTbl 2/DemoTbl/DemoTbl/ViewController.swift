//
//  ViewController.swift
//  DemoTbl
//
//  Created by student on 24/09/24.
//  Copyright © 2024 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tblViewStu: UITableView!
 
    var appDel = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")

        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        print("Number of rows: \(appDel.arrStuds.count)")
        return appDel.arrStuds.count
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
            print("view will appear")
        tblViewStu.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        print("Method \(indexPath.row)")
        let myCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "myCell")
        
       let singleStu = appDel.arrStuds[indexPath.row]
        myCell.textLabel?.text = singleStu.name
        

        
        return myCell
        
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("didSelectRowAt")
        appDel.selectedIndex = indexPath.row
        
        self.performSegue(withIdentifier: "gotoDetailView", sender: self)
        
        //        self.navigationController?.popViewController(animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        print("delete")
        appDel.arrStuds.remove(at: indexPath.row)
        tblViewStu.reloadData()
    }
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

