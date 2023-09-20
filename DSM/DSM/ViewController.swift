//
//  ViewController.swift
//  DSM
//
//  Created by Gilmar Junior on 08/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var homeView : HomeView = {
        let view = HomeView(frame: .zero)
        
        return view
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


