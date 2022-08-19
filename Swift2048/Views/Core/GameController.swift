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
    
    // MARK: -- Views
    
    // MARK: -- Objective Functions
    
    @objc
    func swipeUp() {
        
    }
    
    @objc
    func swipeDown() {
        
    }
    
    @objc
    func swipeLeft() {
        
    }
    
    @objc
    func swipeRight() {
        
    }
    
    // MARK: -- Functions

    func configureViewComponents() {
        view.backgroundColor = .systemBackground
        title = "Game"
        
        navigationItem.hidesBackButton = true
        
        
        let swipeToTop = UISwipeGestureRecognizer(target: self, action: #selector(swipeUp))
        swipeToTop.numberOfTouchesRequired = 1
        swipeToTop.direction = .up
        view.addGestureRecognizer(swipeToTop)
        
        let swipeToBottom = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown))
        swipeToBottom.numberOfTouchesRequired = 1
        swipeToBottom.direction = .down
        view.addGestureRecognizer(swipeToBottom)
        
        let swipeToLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeft))
        swipeToLeft.numberOfTouchesRequired = 1
        swipeToLeft.direction = .left
        view.addGestureRecognizer(swipeToLeft)
        
        let swipeToRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight))
        swipeToRight.numberOfTouchesRequired = 1
        swipeToRight.direction = .right
        view.addGestureRecognizer(swipeToRight)
    }
}
