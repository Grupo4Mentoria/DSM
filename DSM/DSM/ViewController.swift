//
//  ViewController.swift
//  DSM
//
//  Created by Gilmar Junior on 08/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = ThemeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Task {
            try await start()
        }
    }
    
    func start() async throws {
        print(self.viewModel.getThemeId(name: "Dark"))
    }

}

