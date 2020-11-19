//
//  Book+Now+Button.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-17.
//

import UIKit

class Book_Now_Button: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        bookNowButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        bookNowButton()
    }
    
    fileprivate func bookNowButton() {
        setTitle("Book Now", for: .normal)
        setTitleColor(.white, for: .normal)
        backgroundColor = .systemBlue
        layer.cornerRadius = 12
        layer.cornerCurve = .continuous
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = .zero
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 8.0
        translatesAutoresizingMaskIntoConstraints = false
    }
}
