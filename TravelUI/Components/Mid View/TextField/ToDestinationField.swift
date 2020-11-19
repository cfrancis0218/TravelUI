//
//  ToDestinationField.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-17.
//

import UIKit

class ToDestinationField: UITextField {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        destinationField()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        destinationField()
    }
    
    fileprivate func destinationField() {
        backgroundColor = .white
        placeholder = "To:"
        textColor = .black
        borderStyle = .roundedRect
        attributedPlaceholder = NSAttributedString(string: "To:", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
        translatesAutoresizingMaskIntoConstraints = false
    }
}
