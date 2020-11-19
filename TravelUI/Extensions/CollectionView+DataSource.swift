//
//  CollectionView+DataSource.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-15.
//

import Foundation
import UIKit

extension TravelScreen: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        flightData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FlightCell
        cell.flightData = flightData[indexPath.row]
        cell.cellView.cellImage.image = flightData[indexPath.row].image
        cell.cellView.durationLabel.text = flightData[indexPath.row].duration
        cell.backgroundColor = .clear
        return cell
    }
    
    
}
