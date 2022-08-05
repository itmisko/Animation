//
//  ViewController.swift
//  Animation
//
//  Created by Sergei Mishchenko on 04.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var startAnimationButton: SpringButton!
    
    @IBOutlet var presetAttributes: UILabel!
    @IBOutlet var curveAttributes: UILabel!
    @IBOutlet var forceAttributes: UILabel!
    @IBOutlet var durationAttributes: UILabel!
    @IBOutlet var delayAttributes: UILabel!
    
    var animation = Animation.getAnimationAttributes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetAttributes.text = "\(animation.animation)"
        curveAttributes.text = "\(animation.curve)"
        forceAttributes.text = "\(String(format: "%.2f", animation.force))"
        durationAttributes.text = "\(String(format: "%.2f", animation.duration))"
        delayAttributes.text = "\(String(format: "%.2f", animation.delay))"
    }

    @IBAction func startAnimation(_ sender: SpringButton) {
        
        presetAttributes.text = "\(animation.animation)"
        curveAttributes.text = "\(animation.curve)"
        forceAttributes.text = "\(String(format: "%.2f", animation.force))"
        durationAttributes.text = "\(String(format: "%.2f", animation.duration))"
        delayAttributes.text = "\(String(format: "%.2f", animation.delay))"
        
        animationView.animation = animation.animation
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getAnimationAttributes()
        startAnimationButton.setTitle("Run " + animation.animation, for: .normal)
    }
    
}

