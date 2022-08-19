//
//  HomeController.swift
//  Swift2048
//
//  Created by David Riegel on 18.08.22.
//

import UIKit

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewComponents()
    }
    
    // MARK: -- Views
    
    lazy var logoPlaceholderLabel: UILabel = {
        let label = UILabel()
        label.text = "Swift 2048"
        label.textColor = .label
        label.font = .systemFont(ofSize: 38, weight: .bold)
//        label.backgroundColor = UIColor(named: "2048 Color")
//        label.layer.cornerRadius = 10
        return label
    }()
    
    lazy var startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start Game", for: .normal)
        button.setTitleColor(UIColor.label, for: .normal)
        button.layer.cornerRadius = 5
        button.backgroundColor = .systemCyan
        return button
    }()
    
    // MARK: -- Objective C Functions
    
    // MARK: -- Functions

    func configureViewComponents() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(logoPlaceholderLabel)
        logoPlaceholderLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoPlaceholderLabel.anchor(top: view.safeAreaLayoutGuide.centerYAnchor, paddingTop: -75)
        
        view.addSubview(startButton)
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        startButton.anchor(top: view.safeAreaLayoutGuide.centerYAnchor, paddingTop: 0, width: 150)
    }
}

