//
//  DueCell.swift
//  duereminder
//
//  Created by JiangShuli on 9/17/16.
//  Copyright © 2016 SJ. All rights reserved.
//

import UIKit

class DueCell: UITableViewCell {

    @IBOutlet weak var courseNODisplay: UILabel!
    
    @IBOutlet weak var courseNameDisplay: UILabel!
    
    @IBOutlet weak var dueContentDisplay: UILabel!
    
    @IBOutlet weak var enrollmentStatusDisplay: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
