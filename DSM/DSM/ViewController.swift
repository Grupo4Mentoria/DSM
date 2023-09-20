//
//  ViewController.swift
//  DSM
//
//  Created by Gilmar Junior on 08/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(DSMFactory.shared.themeViewModel.getThemeId(name: "Dark"))
        let hexColor = DSMFactory.shared.themeComponentViewModel.getComponentBackgroundColor(name: "customButtonPrimary")
        
        let color = hexadecimalParaCor(hexColor)
        self.view.backgroundColor = color
    }
    
    func hexadecimalParaCor(_ hex: String) -> UIColor? {
        var formattedHex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        formattedHex = formattedHex.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        
        Scanner(string: formattedHex).scanHexInt64(&rgb)
        
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}


