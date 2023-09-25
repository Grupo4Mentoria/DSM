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
    
    func createButton(themeId: Int, component: String, title: String) -> UIButton {
        let viewModel = DSMFactory.shared.themeComponentViewModel
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle(title, for: .normal)
        
        button.backgroundColor = colorConverter.hexToColor(viewModel.getComponentBackgroundColor(themeId: themeId, name: component))
        button.setTitleColor(UIColor(named: viewModel.getComponentForegroundColor(themeId: themeId, name: component)), for: .normal)
        button.titleLabel?.font = UIFont(name: viewModel.getComponentFontName(themeId: themeId, name: component),
                                         size: CGFloat(viewModel.getComponentFontSize(themeId: themeId, name: component)))
        button.layer.cornerRadius = 16
        
        return button
    }
    
    func createTextField(themeId: Int, component: String, placeholder: String) -> UITextField {
        let viewModel = DSMFactory.shared.themeComponentViewModel
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.placeholder = placeholder
        
        textField.backgroundColor = colorConverter.hexToColor(viewModel.getComponentBackgroundColor(themeId: themeId, name: component))
        textField.textColor = colorConverter.hexToColor(viewModel.getComponentForegroundColor(themeId: themeId, name: component))
        textField.font = UIFont(name: viewModel.getComponentFontName(themeId: themeId, name: component),
                                size: CGFloat(viewModel.getComponentFontSize(themeId: themeId, name: component)))
        
        textField.setLeftPaddingPoints(15)
        
        textField.layer.cornerRadius = 8
        
        return textField
    }
    
    func createLabel(themeId: Int, component: String, text: String) -> UILabel {
        let viewModel = DSMFactory.shared.themeComponentViewModel
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = text
        
        label.backgroundColor = UIColor(named: viewModel.getComponentBackgroundColor(themeId: themeId, name: component))
        label.textColor = colorConverter.hexToColor(viewModel.getComponentForegroundColor(themeId: themeId, name: component))
        label.font = UIFont(name: viewModel.getComponentFontName(themeId: themeId, name: component),
                                size: CGFloat(viewModel.getComponentFontSize(themeId: themeId, name: component)))
        
        return label
    }
    
    func createView(themeId: Int, component: String) -> UIView {
        let viewModel = DSMFactory.shared.themeComponentViewModel
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = colorConverter.hexToColor(viewModel.getComponentBackgroundColor(themeId: themeId, name: component))
        
        return view
    }
}
