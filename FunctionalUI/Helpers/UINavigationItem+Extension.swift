//
//  UINavigationItem+Extension.swift
//  FunctionalUI
//
//  Created by spy chatter on 2/23/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension UINavigationItem {
    
    func setUpTitleChat(title: String, image: UIImage, info: String, widthView: CGFloat) {
        
        //configView
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: widthView-100, height: 40))
        titleView.backgroundColor = UIColor.clear
        
        //ConfigImageView
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: titleView.frame.width / 1.2 , height: 40))
        imageView.contentMode = .scaleAspectFit
//        imageView.roundedImage()
        imageView.clipsToBounds = true
        imageView.image = image
        
        //ConfigTitleLabel
        let titleLabel = UILabel(frame: CGRect(x: 45, y: 0, width: widthView-100-50, height: 25))
        titleLabel.text = title
        titleLabel.font = UIFont.boldSystemFont(ofSize: 15)
        titleLabel.textColor = UIColor.blue
        
        //ConfigInfoLabel
        let infoLabel = UILabel(frame: CGRect(x: 45, y: 25, width: widthView-100-50, height: 15))
        infoLabel.text = info
        infoLabel.font = UIFont.systemFont(ofSize: 13)
        infoLabel.textColor = UIColor.blue
        
        //Adding Image, titleLabel and infoLabel to titleView
        titleView.addSubview(imageView)
        titleView.contentMode = .center
//        titleView.addSubview(titleLabel)
//        titleView.addSubview(infoLabel)
        
        //Adding gestureRecognizer
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(titleWasTapped))
        titleView.isUserInteractionEnabled = true
        titleView.addGestureRecognizer(recognizer)
        
        //Asign custoTitleView to titleview
        self.titleView = titleView
    }
    
    @objc func titleWasTapped(){
        NotificationCenter.default.post(name: .init("ChatContactInfo"), object: nil, userInfo: nil)
    }
}
