//
//  GradientView.swift
//  layerBezierChallenges
//
//  Created by Andrew Tsukuda on 5/3/18.
//  Copyright © 2018 Andrew Tsukuda. All rights reserved.
//

import UIKit

class GradientView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        createGradientLayer()
        layer.layoutSublayers()
    }
    
    func createGradientLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [
           UIColor.orange.cgColor,
           UIColor.red.cgColor
        ]

        layer.backgroundColor = UIColor.white.cgColor
        
        layer.addSublayer(gradientLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
}
