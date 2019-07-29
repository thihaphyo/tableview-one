//
//  EasyTableViewCell.swift
//  TableViewEasy
//
//  Created by Phyo Thiha on 29/07/2019.
//  Copyright © 2019 padc. All rights reserved.
//

import UIKit

class EasyTableViewCell: UITableViewCell {

    @IBOutlet weak var labelRowName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func bindData(name:String) {
        
        labelRowName.text = name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
