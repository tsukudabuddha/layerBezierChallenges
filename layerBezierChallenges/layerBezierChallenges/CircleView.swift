//
//  CircleView.swift
//  layerBezierChallenges
//
//  Created by Andrew Tsukuda on 5/3/18.
//  Copyright © 2018 Andrew Tsukuda. All rights reserved.
//

import UIKit

class CircleView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.backgroundColor = UIColor.white.cgColor
        drawCircle()
    }
    
    func drawCircle() {
        let circleLayer = CAShapeLayer()
        let circlePath = UIBezierPath()
        let biggerCirclePath = UIBezierPath()
        let centerPoint = CGPoint(x: bounds.midX, y: bounds.midY)
        circlePath.addArc(withCenter: centerPoint, radius: 75, startAngle: 0, endAngle: 360, clockwise: true)
        circlePath.addArc(withCenter: centerPoint, radius: 50, startAngle: 0, endAngle: 360, clockwise: true)
        
        
        circleLayer.path = circlePath.cgPath
        circleLayer.strokeColor = UIColor.black.cgColor
        circleLayer.lineWidth = 1
        circleLayer.shadowPath = circlePath.cgPath
        circleLayer.shadowRadius = 5
        circleLayer.shadowOpacity = 1
        circleLayer.fillColor = UIColor.red.cgColor
        
        layer.addSublayer(circleLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
}
