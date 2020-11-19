//
//  DestinationField.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-17.
//

import UIKit

class FromDestinationField: UITextField {

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
        placeholder = "From:"
        textColor = .black
        borderStyle = .roundedRect
        attributedPlaceholder = NSAttributedString(string: "From:", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
        translatesAutoresizingMaskIntoConstraints = false
    }
}
