//
//  SunsetBezierView.swift
//  layerBezierChallenges
//
//  Created by Andrew Tsukuda on 5/3/18.
//  Copyright © 2018 Andrew Tsukuda. All rights reserved.
//

import UIKit

class SunsetBezierView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.backgroundColor = UIColor.orange
        
        createShape()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createShape()
    }
    
    
    func createShape() {
        let shape = CAShapeLayer()
        let path = UIBezierPath()
        let startPoint = CGPoint(x: 0, y: bounds.midY)
        path.move(to: startPoint)
        
        let endPoint = CGPoint(x: bounds.maxX, y: bounds.midY)
        path.addLine(to: endPoint)
        
        shape.path = path.cgPath
        shape.lineWidth = 5
        shape.strokeColor = UIColor.blue.cgColor
        
        layer.addSublayer(shape)

    }
}
