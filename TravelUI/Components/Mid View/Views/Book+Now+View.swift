//
//  Book+Now+View.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-17.
//

import UIKit

class Book_Now_View: UIView {
    
    // Warning
    let warningIcon: UIButton = {
        let icon = UIButton()
        icon.setImage(UIImage(systemName: "hand.raised.fill"), for: .normal)
        icon.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 35, weight: .medium), forImageIn: .normal)
        icon.clipsToBounds = true
        icon.tintColor = UIColor(red: 55/255.0, green: 58/255.0, blue: 64/255.0, alpha: 1.0)
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    let warningLabel: UILabel = {
        let warningText = UILabel()
        warningText.text = "MASK IS MANDATORY"
        warningText.textColor = UIColor(red: 55/255.0, green: 58/255.0, blue: 64/255.0, alpha: 1.0)
        warningText.font = UIFont.systemFont(ofSize: 28, weight: .medium)
        warningText.textAlignment = .left
        warningText.translatesAutoresizingMaskIntoConstraints = false
        return warningText
    }()
    
    // Fields
    let fromField = FromDestinationField()
    let toField = ToDestinationField()
    
    // Buttons
    let bookNowButton = Book_Now_Button()
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        bookViewSetup()
        midViewConstraints()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        bookViewSetup()
        midViewConstraints()
    }
    
    fileprivate func bookViewSetup() {
        backgroundColor = UIColor(red: 245/255.0, green: 245/255.0, blue: 243/255.0, alpha: 1.0)
        layer.cornerRadius = 12.0
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = .zero
        layer.shadowRadius = 8.0
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    fileprivate func midViewConstraints() {
        addSubview(warningIcon)
        addSubview(warningLabel)
        addSubview(fromField)
        addSubview(toField)
        addSubview(bookNowButton)
        NSLayoutConstraint.activate([
            warningIcon.topAnchor.constraint(equalTo: self.topAnchor,constant: 10),
            warningIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            warningIcon.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -310),
            warningIcon.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -180),
            
            warningLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            warningLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
            warningLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            warningLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -180),
            
            fromField.topAnchor.constraint(equalTo: self.topAnchor, constant: 65),
            fromField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            fromField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            fromField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -120),
            
            toField.topAnchor.constraint(equalTo: self.topAnchor, constant: 120),
            toField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            toField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            toField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -65),
            
            bookNowButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 180),
            bookNowButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            bookNowButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            bookNowButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
            
            
        ])
    }
}
