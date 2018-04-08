//
//  File.swift
//  Showinfo
//
//  Created by Ahmed on 4/1/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import Foundation
import UIKit

class Customview: UIView {
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.layer.shadowRadius = 3
        self.layer.shadowOpacity = 0.4
        self.layer.borderColor = UIColor.black.withAlphaComponent(0.3).cgColor
        self.layer.borderWidth = 1
        
    }
    
    
}
