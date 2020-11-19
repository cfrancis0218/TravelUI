//
//  Background+View.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-15.
//

import UIKit

class Background_View: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundView()
    }
    
    fileprivate func backgroundView() {
        self.backgroundColor = UIColor(red: 238/255.0, green: 237/255.0, blue: 237/255.0, alpha: 1.0)
    }
}
