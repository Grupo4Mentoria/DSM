//
//  HomeView.swift
//  DSM
//
//  Created by Cesar Silva on 20/09/23.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    lazy var primaryButton: UIButton = {
        return UIComponentsFactory.shared.createButton(component: ThemeComponentEnum.customButtomPrimary.rawValue, title: "Primary Button")
    }()
    
    lazy var secondaryButton: UIButton = {
        return UIComponentsFactory.shared.createButton(component: ThemeComponentEnum.customButtomSecundary.rawValue, title: "Secondary Button")
    }()
    
    lazy var customText: UITextField = {
        return UIComponentsFactory.shared.createTextField(component: ThemeComponentEnum.customText.rawValue, placeholder: "Custom Text")
    }()
    
    lazy var customTextField: UITextField = {
        return UIComponentsFactory.shared.createTextField(component: ThemeComponentEnum.customTextField.rawValue, placeholder: "Custom TextField")
    }()
    
    lazy var customView: UIView = {
        return UIComponentsFactory.shared.createView(component: ThemeComponentEnum.customView.rawValue)
    }()
    
    lazy var customSubView: UIView = {
        return UIComponentsFactory.shared.createView(component: ThemeComponentEnum.customSubView.rawValue)
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .systemBackground
        
        setVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setVisualElements() {
        self.addSubview(primaryButton)
        self.addSubview(secondaryButton)
        self.addSubview(customText)
        self.addSubview(customTextField)
        self.addSubview(customView)
        self.addSubview(customSubView)
        
        NSLayoutConstraint.activate([
            primaryButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            primaryButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            primaryButton.widthAnchor.constraint(equalToConstant: 200),
            primaryButton.heightAnchor.constraint(equalToConstant: 50),
            
            secondaryButton.leadingAnchor.constraint(equalTo: primaryButton.leadingAnchor),
            secondaryButton.trailingAnchor.constraint(equalTo: primaryButton.trailingAnchor),
            secondaryButton.topAnchor.constraint(equalTo: primaryButton.bottomAnchor, constant: 20),
            secondaryButton.heightAnchor.constraint(equalToConstant: 50),
            
            customText.leadingAnchor.constraint(equalTo: secondaryButton.leadingAnchor),
            customText.trailingAnchor.constraint(equalTo: secondaryButton.trailingAnchor),
            customText.topAnchor.constraint(equalTo: secondaryButton.bottomAnchor, constant: 20),
            customText.heightAnchor.constraint(equalToConstant: 50),
            
            customTextField.leadingAnchor.constraint(equalTo: customText.leadingAnchor),
            customTextField.trailingAnchor.constraint(equalTo: customText.trailingAnchor),
            customTextField.topAnchor.constraint(equalTo: customText.bottomAnchor, constant: 20),
            customTextField.heightAnchor.constraint(equalToConstant: 50),
            
            customView.leadingAnchor.constraint(equalTo: customTextField.leadingAnchor),
            customView.trailingAnchor.constraint(equalTo: customTextField.trailingAnchor),
            customView.topAnchor.constraint(equalTo: customTextField.bottomAnchor, constant: 20),
            customView.heightAnchor.constraint(equalToConstant: 50),
            
            customSubView.leadingAnchor.constraint(equalTo: customView.leadingAnchor),
            customSubView.trailingAnchor.constraint(equalTo: customView.trailingAnchor),
            customSubView.topAnchor.constraint(equalTo: customView.bottomAnchor, constant: 20),
            customSubView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
