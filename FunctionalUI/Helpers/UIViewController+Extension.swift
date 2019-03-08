//
//  UIViewController+Extension.swift
//  FunctionalUI
//
//  Created by spy chatter on 2/26/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func collectionView() -> () -> UICollectionView {
        return {
            let collectionViewLayout = UICollectionViewFlowLayout()
            collectionViewLayout.scrollDirection = .vertical
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
            collectionView.backgroundColor = .none
            collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
            collectionView.showsVerticalScrollIndicator = true
            return collectionView
        }
        
        
    }
    
    //LiveReload
//    #if DEBUG
//    @objc func injected() {
//        
//        for subview in self.view.subviews {
//            subview.removeFromSuperview()
//        }
//        if let sublayers = self.view.layer.sublayers {
//            for sublayer in sublayers {
//                sublayer.removeFromSuperlayer()
//            }
//        }
//        
//        viewDidLoad()
//    }
//    #endif
//    
}

