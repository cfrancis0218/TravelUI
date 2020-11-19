//
//  CollectionView+Delegate.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-15.
//

import Foundation
import UIKit

extension TravelScreen: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/1.3, height: collectionView.frame.width/2)
    }
}
