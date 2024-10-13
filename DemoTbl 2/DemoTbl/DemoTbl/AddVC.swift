//
//  AddVC.swift
//  DemoTbl
//
//  Created by student on 03/10/24.
//  Copyright © 2024 student. All rights reserved.
//

import UIKit

class AddVC: UIViewController {

    @IBOutlet weak var txtNm: UITextField!
    @IBOutlet weak var txtNo: UITextField!
    
    var appDel = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func actionSave(_ sender: Any) {
        var stuObj = Student()
        
        stuObj.no = txtNo.text!
        stuObj.name = txtNm.text!
        appDel.arrStuds.append(stuObj)
        self.navigationController?.popViewController(animated: true)

        
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
