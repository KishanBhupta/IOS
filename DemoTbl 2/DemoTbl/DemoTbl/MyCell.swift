//
//  MyCell.swift
//  DemoTbl
//
//  Created by student on 08/10/24.
//  Copyright © 2024 student. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {
    @IBOutlet weak var lblLeft: UILabel!
    @IBOutlet weak var lblRight: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
