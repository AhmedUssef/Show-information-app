//
//  CellVC.swift
//  Showinfo
//
//  Created by Ahmed on 3/31/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit

class CellVC: UITableViewCell {

    
    @IBOutlet weak var cover: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
