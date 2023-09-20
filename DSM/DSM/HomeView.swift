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
        return UIComponentsFactory.shared.createButton(component: "customButtonPrimary", title: "Primary Button")
    }()
    
    lazy var secondaryButton: UIButton = {
        return UIComponentsFactory.shared.createButton(component: "customButtonSecundary", title: "Secondary Button")
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
        
        NSLayoutConstraint.activate([
            primaryButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            primaryButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            primaryButton.widthAnchor.constraint(equalToConstant: 200),
            primaryButton.heightAnchor.constraint(equalToConstant: 50),
            secondaryButton.leadingAnchor.constraint(equalTo: primaryButton.leadingAnchor),
            secondaryButton.trailingAnchor.constraint(equalTo: primaryButton.trailingAnchor),
            secondaryButton.topAnchor.constraint(equalTo: primaryButton.bottomAnchor, constant: 20),
            secondaryButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
