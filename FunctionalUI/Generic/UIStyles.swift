//
//  UIStyles.swift
//  FunctionalUI
//
//  Created by spy chatter on 2/19/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

func styleViewBackground(color: UIColor) -> (UIView) -> Void {
    return {
        $0.backgroundColor = color
    }
}

func styleViewBorder(color: UIColor, width: CGFloat) -> (UIView) -> Void{
    return {
        $0.layer.borderColor = color.cgColor
        $0.layer.borderWidth = width
    }
}

