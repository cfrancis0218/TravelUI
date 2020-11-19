//
//  FlightCell.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-15.
//

import UIKit

class FlightCell: UICollectionViewCell {
    
    let cellView = CellView()
    
    var flightData: FlightData? {
        didSet {
            guard let flightData = flightData else { return }
            cellView.cellImage.image = flightData.image
            cellView.durationLabel.text = flightData.duration
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        cellSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        cellSetup()
    }
    
    fileprivate func cellSetup() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.backgroundColor = .white
        self.clipsToBounds = true
        
        cellView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(cellView)
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            cellView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            cellView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
    }
}
