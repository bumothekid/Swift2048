//
//  GameView.swift
//  Swift2048
//
//  Created by David Riegel on 19.08.22.
//

import UIKit

class GameView: UIView {
    let boardWidth = 230
    let dimension = 4
    let padding = 3
    let cornerRadius = 6

    init() {
        let v1 = boardWidth - padding * dimension + 1
        let width: CGFloat = CGFloat(floorf(CFloat(v1)))/CGFloat(dimension)
        let widthAndHeight = padding * dimension * (Int(width) + padding)
        super.init(frame: CGRect(x: 0, y: 0, width: widthAndHeight, height: widthAndHeight))
        layer.cornerRadius = CGFloat(cornerRadius)
        
        backgroundColor = .black
        
        var xCoordinates: CGFloat = CGFloat(padding)
        var yCoordinates: CGFloat = CGFloat(padding)
        let backgroundCornerRadius = cornerRadius - 2
        
        for _ in 0..<dimension {
            yCoordinates = CGFloat(padding)
            for _ in 0..<dimension {
                let background = UIView(frame: CGRect(x: xCoordinates, y: yCoordinates, width: width, height: width))
                background.layer.cornerRadius = CGFloat(backgroundCornerRadius)
                background.backgroundColor = UIColor.darkGray
                
                addSubview(background)
                yCoordinates += CGFloat(padding) + CGFloat(width)
            }
            xCoordinates += CGFloat(padding) + CGFloat(width)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
