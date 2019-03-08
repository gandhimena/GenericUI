//
//  ViewController.swift
//  FunctionalUI
//
//  Created by spy chatter on 2/19/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit
import Stevia

class MainView: UIViewController {

    var collectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = .none
        collectionView.register(MainViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.showsVerticalScrollIndicator = true
        return collectionView
    }()
    
    //navigationItems
    let buttonleft = UIElementsType.buttonBarItemLeft
    let buttonright = UIElementsType.buttonBarItemRight
    let buttonright2 = UIElementsType.buttonBarItemRightTwo

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        //NavigationBar Left
        buttonleft.setImage(UIImage(named:"PhotoIcon"), for: .normal)
        buttonleft.addTarget(self, action: #selector(barButtonItemLeftAction), for: .touchUpInside)
        let letfBarButtonItem = UIBarButtonItem(customView: buttonleft)
        navigationItem.leftBarButtonItem = letfBarButtonItem
        
        //NavigationBar Right
        buttonright.setImage(UIImage(named:"PhotoIcon"), for: .normal)
        buttonright.addTarget(self, action: #selector(barButtonItemRightAction), for: .touchUpInside)
        
        buttonright2.setImage(UIImage(named:"PhotoIcon"), for: .normal)
        buttonright2.addTarget(self, action: #selector(barButtonItemRightActionTwo), for: .touchUpInside)
        
        let rightBarButtonItem = UIBarButtonItem(customView: buttonright)
        let rightBarButtonItem2 = UIBarButtonItem(customView: buttonright2)
        navigationItem.rightBarButtonItems = [rightBarButtonItem,rightBarButtonItem2]
        
        //CollectionView
        collectionView.frame = view.frame
        collectionView.dataSource = self
        collectionView.delegate = self
        
        showCollectionViewConstrains()
        
    }
    
    @objc func barButtonItemLeftAction(){
        print("barButtonItemLeftAction")
    
    }
    
    @objc func barButtonItemRightAction(){
        print("barButtonItemRightAction")
    
    }
    
    @objc func barButtonItemRightActionTwo(){
        print("barButtonItemRightActionTwo")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.navigationItem.setUpTitleChat(title: "", image: UIImage(named:"instagram_Icon")!, info: "", widthView: self.view.frame.width)
    }
    
    
    func showCollectionViewConstrains() {
        view.addSubview(collectionView)
    }
    
    //FunctionTableView
    @objc func imageMenuTapped() {
        print("image menu Tapped")
    }
    
    @objc func headerImageTapped() {
        print("header image Tapped")
    }
}

