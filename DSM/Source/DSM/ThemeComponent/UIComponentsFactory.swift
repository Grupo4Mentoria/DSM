//
//  UIComponentsFactory.swift
//  DSM
//
//  Created by Cesar Silva on 20/09/23.
//

import Foundation
import UIKit

struct UIComponentsFactory {
    
    static let shared = UIComponentsFactory()
    
    private let colorConverter = ColorConverter()
    
    func createButton(component: String, title: String) -> UIButton {
        let viewModel = DSMFactory.shared.themeComponentViewModel
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle(title, for: .normal)
        
        button.backgroundColor = colorConverter.hexToColor(viewModel.getComponentBackgroundColor(name: component))
        button.setTitleColor(UIColor(named: viewModel.getComponentForegroundColor(name: component)), for: .normal)
        button.titleLabel?.font = UIFont(name: viewModel.getComponentFontName(name: component),
                                         size: CGFloat(viewModel.getComponentFontSize(name: component)))
        return button
    }
    
    func createTextField(component: String, placeholder: String) -> UITextField {
        let viewModel = DSMFactory.shared.themeComponentViewModel
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.placeholder = placeholder
        
        textField.backgroundColor = UIColor(named: viewModel.getComponentBackgroundColor(name: component))
        textField.textColor = colorConverter.hexToColor(viewModel.getComponentForegroundColor(name: component))
        textField.font = UIFont(name: viewModel.getComponentFontName(name: component),
                                size: CGFloat(viewModel.getComponentFontSize(name: component)))
        
        return textField
    }
    
    func createView(component: String) -> UIView {
        let viewModel = DSMFactory.shared.themeComponentViewModel
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = colorConverter.hexToColor(viewModel.getComponentBackgroundColor(name: component))
        
        return view
    }
}
