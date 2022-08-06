//
//  ViewController.swift
//  Animation
//
//  Created by Sergei Mishchenko on 04.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    // MARK: IBOutlet View & Button
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var startAnimationButton: SpringButton!
    
    // MARK: IBOutlet Animation Attributes
    
    @IBOutlet var presetAttributes: UILabel!
    @IBOutlet var curveAttributes: UILabel!
    @IBOutlet var forceAttributes: UILabel!
    @IBOutlet var durationAttributes: UILabel!
    @IBOutlet var delayAttributes: UILabel!
    
    // MARK: Model call
    
    var animation = Animation.getAnimationAttributes()
    
    // MARK: viewDidload
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetAttributes.text = "\(animation.animation)"
        curveAttributes.text = "\(animation.curve)"
        forceAttributes.text = "\(String(format: "%.2f", animation.force))"
        durationAttributes.text = "\(String(format: "%.2f", animation.duration))"
        delayAttributes.text = "\(String(format: "%.2f", animation.delay))"
    }

    // MARK: IBAction
    
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

