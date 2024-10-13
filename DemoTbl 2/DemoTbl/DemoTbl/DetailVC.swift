//
//  DetailVC.swift
//  DemoTbl
//
//  Created by student on 03/10/24.
//  Copyright © 2024 student. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var lblNo: UILabel!

    @IBOutlet weak var lblNm: UILabel!
    var appDel = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
var selectedStu = appDel.arrStuds[appDel.selectedIndex]
        lblNm.text = selectedStu.name
        lblNo.text = selectedStu.no
        // Do any additional setup after loading the view.
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
