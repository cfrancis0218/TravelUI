//
//  BookLabel.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-17.
//

import UIKit

class BookLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        bookLabelSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        bookLabelSetup()
    }
    
    fileprivate func bookLabelSetup() {
        self.text = "Book Now"
        self.textColor = UIColor(red: 55/255.0, green: 58/255.0, blue: 64/255.0, alpha: 1.0)
        self.textAlignment = .center
        self.font = UIFont.systemFont(ofSize: 28, weight: .medium)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
