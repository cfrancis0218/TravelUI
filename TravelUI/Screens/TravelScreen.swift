//
//  ViewController.swift
//  TravelUI
//
//  Created by Christian Elijah on 2020-11-15.
//

import UIKit

class TravelScreen: UIViewController {
    
    // Background Color
    let backgroundViewColor = Background_View()
    // Card View
    let cardView = Card_View()
    // Mid View
    let bookNowLabel = BookLabel()
    let bookNowView = Book_Now_View()
    
    // Collection View + Data
    lazy var collectionView: UICollectionView = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        var collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .clear
        collection.showsHorizontalScrollIndicator = false
        return collection
    }()
    
    var flightData = [
        FlightData(name: "Canyon", image: #imageLiteral(resourceName: "dino-reichmuth-A5rCN8626Ck-unsplash"), duration: "Duration: 6h"),
        FlightData(name: "Greece", image: #imageLiteral(resourceName: "ryan-spencer-XGKaRnWjv1c-unsplash"), duration: "Duration: 8h"),
        FlightData(name: "Puerto Rico", image: #imageLiteral(resourceName: "rolands-varsbergs-miKmVyq3qhE-unsplash"), duration: "Duration: 4h"),
        FlightData(name: "Grand Canyon", image: #imageLiteral(resourceName: "jake-blucker-tMzCrBkM99Y-unsplash"), duration: "Duration: 12"),
        FlightData(name: "Harry Potter World", image: #imageLiteral(resourceName: "roman-kraft-g_gwdpsCVAY-unsplash"), duration: "Duration: 1h"),
        FlightData(name: "Bora Bora", image: #imageLiteral(resourceName: "shifaaz-shamoon-qtbV_8P_Ksk-unsplash"), duration: "Duration: 16h"),
        FlightData(name: "Banff Alberta", image: #imageLiteral(resourceName: "luca-bravo-O453M2Liufs-unsplash"), duration: "Duration: 3h"),
        FlightData(name: "Italy", image: #imageLiteral(resourceName: "anders-jilden-cYrMQA7a3Wc-unsplash"), duration: "Duration: 5h"),
    ]
    
    // ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        view = backgroundViewColor
        componentConstraints()
        collectionViewDelegates()
        self.collectionView.register(FlightCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    fileprivate func collectionViewDelegates() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    fileprivate func componentConstraints() {
        
        view.addSubview(cardView)
        view.addSubview(collectionView)
        view.addSubview(bookNowLabel)
        view.addSubview(bookNowView)
        
        NSLayoutConstraint.activate([
            
            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 105),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -495),
            
            cardView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -700),
            
            bookNowLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 325),
            bookNowLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            
            bookNowView.topAnchor.constraint(equalTo: view.topAnchor, constant: 375),
            bookNowView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            bookNowView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10),
            bookNowView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
            
        ])
    }


}

