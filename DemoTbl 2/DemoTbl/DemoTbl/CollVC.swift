//
//  CollVC.swift
//  DemoTbl
//
//  Created by student on 08/10/24.
//  Copyright © 2024 student. All rights reserved.
//

import UIKit

class CollVC: UIViewController,UICollectionViewDataSource {

    
    var arr=[String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        arr.append("1.jpeg")
        arr.append("2.png")
        arr.append("3.jpeg")
        arr.append("4.png")
        arr.append("5.jpeg")
        arr.append("6.png")
        arr.append("7.png")
        arr.append("8.jpeg")
        arr.append("1.jpeg")
        arr.append("2.png")
        arr.append("3.jpeg")
        arr.append("4.png")
        arr.append("5.jpeg")
        arr.append("6.png")
        arr.append("7.png")
        arr.append("8.jpeg")
        arr.append("1.jpeg")
        arr.append("2.png")
        arr.append("3.jpeg")
        arr.append("4.png")
        arr.append("5.jpeg")
        arr.append("6.png")
        arr.append("7.png")
        arr.append("8.jpeg")
        arr.append("1.jpeg")
        arr.append("2.png")
        arr.append("3.jpeg")
        arr.append("4.png")
        arr.append("5.jpeg")
        arr.append("6.png")
        arr.append("7.png")
        arr.append("8.jpeg")
        arr.append("1.jpeg")
        arr.append("2.png")
        arr.append("3.jpeg")
        arr.append("4.png")
        arr.append("5.jpeg")
        arr.append("6.png")
        arr.append("7.png")
        arr.append("8.jpeg")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    
    
    {
        return arr.count
        
    }
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollCell", for: indexPath) as! MyCollCell
        
        cell.imgView.image = UIImage(named: arr[indexPath.row])
        
        return cell
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
