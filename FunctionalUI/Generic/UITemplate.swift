//
//  UITemplate.swift
//  FunctionalUI
//
//  Created by spy chatter on 2/20/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

enum UIElements {
    case button
    case buttonImage
    case label
    case view
    case textField
    case swich
    case textView
    case imageView
    case stackView
}


extension UIElements {
    
    var view: UIView {
        switch self {
        case .button:
            let button = UIButton(type: .system)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.backgroundColor = UIColor(red: 240/255, green: 56/255, blue: 125/255, alpha: 1)
            button.setTitle("Default", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = 15
            return button
        case .buttonImage:
            let buttonImage = UIButton(type: .custom)
            buttonImage.backgroundColor = .none
            buttonImage.isUserInteractionEnabled = true
            buttonImage.setTitle("", for: .normal)
            return buttonImage
        case .label:
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Defalt Label"
            label.textAlignment = .left
            return label
        case .view:
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .white
            return view
        case .textField:
            let textField = UITextField()
            textField.placeholder = "N/A"
            textField.borderStyle = .roundedRect
            textField.translatesAutoresizingMaskIntoConstraints = false
            return textField
        case .imageView:
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.clipsToBounds = true
            imageView.contentMode = .scaleAspectFit
            imageView.isUserInteractionEnabled = true
            return imageView
        case .stackView:
            let stackView = UIStackView()
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.backgroundColor = .black
            stackView.axis = .vertical
            stackView.distribution = .fillProportionally
            stackView.alignment = .fill
            stackView.spacing = 2
            return stackView
        
        default:
            return UIView()
        }
        
        
    }
}


struct UIElementsType {
    
    static var buttonDefault: UIButton {
        let button = UIElements.button.view as! UIButton
        return button
    }
 
    
    static var buttonDebug: UIButton {
        let button = buttonDefault
        button.backgroundColor = .black
        return button
    }
    
    static var buttonBarItemLeft: UIButton {
        let buttonImage = UIElements.buttonImage.view as! UIButton
        buttonImage.imageEdgeInsets = UIEdgeInsets(top: 10, left: -10, bottom: 10, right: 35)
        return buttonImage
    }
    
    static var buttonBarItemRight: UIButton {
        let buttonImage = UIElements.buttonImage.view as! UIButton
         buttonImage.imageEdgeInsets = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: -5)
        return buttonImage
    }
    
    static var buttonBarItemRightTwo: UIButton {
        let buttonImage = UIElements.buttonImage.view as! UIButton
        buttonImage.imageEdgeInsets = UIEdgeInsets(top: 10, left: 35, bottom: 10, right: -10)
        return buttonImage
    }
    
    static var labelDefault: UILabel {
        let label = UIElements.label.view as! UILabel
        return label
    }
    
    static var viewDefault: UIView {
        let view = UIElements.view.view
        return view
    }
    
    static var textFieldDefault: UITextField {
        let textField = UIElements.textField.view as! UITextField
        return textField
    }
    
    static var imageDefault: UIImageView {
        let imageView = UIElements.imageView.view as! UIImageView
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "PhotoIcon") ?? UIImage()
//        image.highlightedImage = UIImage(named: "PhotoIcon_Highligther")
        return imageView
    }
    
    static var stackViewVertical: UIStackView {
        let stackView = UIElements.stackView.view as! UIStackView
        return stackView
    }
    
    static var stackViewHorizontal: UIStackView {
        let stackView = UIElements.stackView.view as! UIStackView
        stackView.axis = .horizontal
        return stackView
    }

}


