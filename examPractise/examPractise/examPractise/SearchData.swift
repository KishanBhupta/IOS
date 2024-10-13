//
//  SearchData.swift
//  examPractise
//
//  Created by student on 10/10/24.
//  Copyright © 2024 student. All rights reserved.
//

import UIKit

class SearchData: UIViewController {

    var appDel = UIApplication.shared.delegate as! AppDelegate
    @IBOutlet weak var txtsearch: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func ActionSearch(_ sender: Any) {
        
        appDel.carName = txtsearch.text!
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
