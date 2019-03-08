//
//  MainView+DataSource.swift
//  FunctionalUI
//
//  Created by spy chatter on 3/2/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension MainView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? MainViewCell else  {
            return UICollectionViewCell()
        }
        
        cell.backgroundColor = .blue
        let headerImageTap = UITapGestureRecognizer(target: self, action: #selector(headerImageTapped))
        cell.headerUserImage.addGestureRecognizer(headerImageTap)
        //        cell.headerMenuImage.tag = indexPath.row
        let imageMenuTap = UITapGestureRecognizer(target: self, action: #selector(imageMenuTapped))
        cell.headerMenuImage.addGestureRecognizer(imageMenuTap)
        cell.userName.addTarget(self, action: #selector(headerImageTapped), for: .touchUpInside)
        cell.userLocation.addTarget(self, action: #selector(headerImageTapped), for: .touchUpInside)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //        let cellSelected = collectionView.cellForItem(at: indexPath)
        //        print(cellSelected?.description)
    }
    
    
}
