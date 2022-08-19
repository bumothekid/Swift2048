//
//  GameController.swift
//  Swift2048
//
//  Created by David Riegel on 19.08.22.
//

import UIKit

class GameController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewComponents()
    }
    

    func configureViewComponents() {
        view.backgroundColor = .systemBackground
        title = "Game"
        
        navigationItem.hidesBackButton = true
        
        
    }
}
