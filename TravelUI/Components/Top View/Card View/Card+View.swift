//
//  Card+View.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-15.
//

import UIKit

class Card_View: UIView {
    
    let planeButton = Plane_Button()
    
    let titleLabel: UILabel = {
        var title = UILabel()
        title.text = "Travel Covid"
        title.textAlignment = .center
        title.textColor = UIColor(red: 55/255.0, green: 58/255.0, blue: 64/255.0, alpha: 1.0)
        title.font = UIFont.systemFont(ofSize: 35, weight: .medium)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        cardView()
        imageContraints()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        cardView()
        imageContraints()
    }
    
    fileprivate func cardView() {
        self.backgroundColor = UIColor(red: 245/255.0, green: 245/255.0, blue: 243/255.0, alpha: 1.0)
        self.layer.cornerRadius = 20.0
        self.layer.shadowOffset = .zero
        self.layer.shadowColor =  UIColor.lightGray.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 8.0
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    fileprivate func imageContraints() {
        
        addSubview(planeButton)
        addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -150),
            titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30),
            
            planeButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            planeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 300),
            planeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 10),
            planeButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30),
            
        ])
    }
}

