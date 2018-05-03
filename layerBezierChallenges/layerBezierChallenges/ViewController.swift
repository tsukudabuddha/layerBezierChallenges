//
//  ViewController.swift
//  layerBezierChallenges
//
//  Created by Andrew Tsukuda on 5/3/18.
//  Copyright © 2018 Andrew Tsukuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let sunset = SunsetBezierView(frame: view.frame)
//        view.addSubview(sunset)
        
        let gradient = GradientView(frame: view.frame)
//        view.addSubview(gradient)
//        view.layoutSubviews()
        view = sunset
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

