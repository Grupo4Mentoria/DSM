//
//  ThemeComponentViewModel.swift
//  DSM
//
//  Created by Cesar Silva on 12/09/23.
//

import Foundation
import SDKNetwork

class ThemeComponentViewModel {
    
    private var themeComponentModel: [ThemeComponentModel] = []
    
    init(themeComponentModel: [ThemeComponentModel]) {
        self.themeComponentModel = themeComponentModel
    }
    
    func getComponentName(id: Int) -> String {
        guard let model = themeComponentModel.filter({$0.id == id}).first,
              let name = model.name else {
            return ""
        }
        return name
    }
    
    func getComponentForegroundColor(name: String) -> String {
        guard let model = themeComponentModel.filter({$0.name == name}).first,
              let foregroundColor = model.foregroundColor else {
            return ""
        }
        return foregroundColor
    }
    
    func getComponentBackgroundColor(name: String) -> String {
        guard let model = themeComponentModel.filter({$0.name == name}).first,
              let backgroundColor = model.backgroundColor else {
            return ""
        }
        return backgroundColor
    }
    
    func getComponentFontName(name: String) -> String {
        guard let model = themeComponentModel.filter({$0.name == name}).first,
              let fontName = model.fontName else {
            return ""
        }
        return fontName
    }
    
    func getComponentFontSize(name: String) -> Int {
        guard let model = themeComponentModel.filter({$0.name == name}).first,
              let fontSize = model.fontSize else {
            return 0
        }
        return fontSize
    }
}
