//
//  CellView.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-16.
//

import UIKit

class CellView: UIView {
    
    let durationLabel = DurationLabel()
    
    let descriptionView: UIView = {
        let description = UIView()
        description.backgroundColor = UIColor(red: 55/255.0, green: 58/255.0, blue: 64/255.0, alpha: 1.0)
        description.layer.cornerRadius = 8
        description.clipsToBounds = true
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
    
    let cellImage: UIImageView = {
        let theImage = UIImageView()
        theImage.clipsToBounds = true
        theImage.layer.cornerRadius = 12
        theImage.contentMode = .scaleAspectFill
        theImage.translatesAutoresizingMaskIntoConstraints = false
        return theImage
    }()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        cellViewSetup()
        theConstraints()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        cellViewSetup()
        theConstraints()
    }
    
    fileprivate func cellViewSetup() {
        self.backgroundColor = .clear
        self.layer.cornerRadius = 12
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 5.0
        self.clipsToBounds = true
    }
    
    fileprivate func theConstraints() {
        
        addSubview(cellImage)
        addSubview(descriptionView)
        addSubview(durationLabel)
        
        NSLayoutConstraint.activate([
            cellImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            cellImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            cellImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            cellImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            descriptionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
            descriptionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 100),
            descriptionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -100),
            descriptionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            
            durationLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
            durationLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 110),
            durationLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            durationLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
        ])
    }
}
