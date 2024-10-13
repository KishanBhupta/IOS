
//
//  details.swift
//  examPractise
//
//  Created by student on 10/10/24.
//  Copyright © 2024 student. All rights reserved.
//

import UIKit

class details: UIViewController {

    var appDel = UIApplication.shared.delegate as! AppDelegate
    @IBOutlet weak var txtData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ActionDelete(_ sender: Any) {
        appDel.carList.remove(at: appDel.carid)
        
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
