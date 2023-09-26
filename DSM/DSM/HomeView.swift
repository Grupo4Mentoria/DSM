//
//  HomeView.swift
//  DSM
//
//  Created by Cesar Silva on 20/09/23.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    var themeId = 1
    
    lazy var primaryButton: UIButton = {
        let button = UIComponentsFactory.shared.createButton(themeId: themeId, component: ThemeComponentEnum.customButtomPrimary.rawValue, title: "Primary Button")
        button.addTarget(self, action: #selector(primaryButtonAction), for: .touchUpInside)
        return button

    }()
    
    lazy var secondaryButton: UIButton = {
        return UIComponentsFactory.shared.createButton(themeId: themeId, component: ThemeComponentEnum.customButtomSecundary.rawValue, title: "Secondary Button")
    }()
    
    lazy var customText: UILabel = {
        return UIComponentsFactory.shared.createLabel(themeId: themeId, component: ThemeComponentEnum.customText.rawValue, text: "Custom Text")
    }()
    
    lazy var customTextField: UITextField = {
        return UIComponentsFactory.shared.createTextField(themeId: themeId, component: ThemeComponentEnum.customTextField.rawValue, placeholder: "Custom TextField")
    }()
    
    lazy var customView: UIView = {
        return UIComponentsFactory.shared.createView(themeId: themeId, component: ThemeComponentEnum.customView.rawValue)
    }()
    
    lazy var customSubView: UIView = {
        return UIComponentsFactory.shared.createView(themeId: themeId, component: ThemeComponentEnum.customSubView.rawValue)
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
            primaryButton.widthAnchor.constraint(equalToConstant: 250),
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
    
    @objc func primaryButtonAction(sender:UIButton!) {
        themeId = themeId == 1 ? 2 : 1
        UIComponentsFactory.shared.updateButtonLayout(primaryButton, themeId: themeId, component: ThemeComponentEnum.customButtomPrimary.rawValue)
        UIComponentsFactory.shared.updateButtonLayout(secondaryButton, themeId: themeId, component: ThemeComponentEnum.customButtomSecundary.rawValue)
        UIComponentsFactory.shared.updateLabelLayout(customText, themeId: themeId, component: ThemeComponentEnum.customText.rawValue)
        UIComponentsFactory.shared.updateTextFieldLayout(customTextField, themeId: themeId, component: ThemeComponentEnum.customTextField.rawValue)
        UIComponentsFactory.shared.updateViewLayout(customView, themeId: themeId, component: ThemeComponentEnum.customView.rawValue)
        UIComponentsFactory.shared.updateViewLayout(customSubView, themeId: themeId, component: ThemeComponentEnum.customSubView.rawValue)
    }
}
