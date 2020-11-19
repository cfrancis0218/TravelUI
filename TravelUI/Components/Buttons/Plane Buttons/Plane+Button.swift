//
//  Plane+Button.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-15.
//

import UIKit

class Plane_Button: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        planeButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        planeButton()
    }
    
    fileprivate func planeButton() {
        self.setImage(UIImage(systemName: "airplane"), for: .normal)
        self.backgroundColor = UIColor(red: 55/255.0, green: 58/255.0, blue: 64/255.0, alpha: 1.0)
        self.tintColor = UIColor.white
        self.layer.cornerRadius = 10.0
        self.layer.shadowColor = UIColor(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1.0).cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 3.0
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
