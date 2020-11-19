//
//  DurationLabel.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-16.
//

import UIKit

class DurationLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        durationLabelSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        durationLabelSetup()
    }
    
    fileprivate func durationLabelSetup() {
        self.textColor = UIColor(red: 245/255.0, green: 245/255.0, blue: 243/255.0, alpha: 1.0)
        self.textAlignment = .left
        self.font = UIFont.systemFont(ofSize: 12.0, weight: .bold)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
