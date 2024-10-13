//
//  ViewController.swift
//  examPractise
//
//  Created by student on 10/10/24.
//  Copyright © 2024 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource ,UITableViewDelegate  , UICollectionViewDelegate , UICollectionViewDataSource {
    @IBOutlet weak var tableview: UITableView!


    @IBOutlet weak var CollectionViewVIew: UICollectionView!
    @IBOutlet weak var TableViewView: UIView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    var appDel = UIApplication.shared.delegate as! AppDelegate

    
    @IBAction func ActionSearchPage(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.reloadData()
    
        // Do any additional setup after loading the view, typically from a nib.
    }
   
      @IBAction func ActionAddPage(_ sender: Any) {
           }
   
    @IBAction func ActionSegment(_ sender: Any) {
        if(segment.selectedSegmentIndex == 0 ){
            TableViewView.isHidden = false
            CollectionViewVIew.isHidden = true
        }
        else {
            TableViewView.isHidden = true
            CollectionViewVIew.isHidden = false
        }
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return appDel.carList.count
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableview.reloadData()
    }
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("method callled")
        appDel.carid = indexPath.row
        print(appDel.carid)
        
        self.performSegue(withIdentifier: "details", sender: self)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {

     let myCell = UITableViewCell(style: .default, reuseIdentifier: "myCell"	)
        if(appDel.carName == ""  ){
       
        myCell.textLabel?.text = appDel.carList[indexPath.row].name
        
               }
        else {
            if(appDel.carList[indexPath.row].comanyName == appDel.carName){
        myCell.textLabel?.text = appDel.carList[indexPath.row].name
            }
        }
        
        return myCell

    }

    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        CollectionViewVIew.reloadData()
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return appDel.carList.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("method callled")
        appDel.carid = indexPath.row
        print(appDel.carid)
        
        self.performSegue(withIdentifier: "details", sender: self)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        var myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyColCell", for: indexPath) as! MyColCell
        myCell.txtData.text = appDel.carList[indexPath.row].name
    
        return myCell
    }

    

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

