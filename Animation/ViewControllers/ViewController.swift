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
    
    var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startAnimation(_ sender: SpringButton) {
        startAnimationButton.setTitle("Run " + Animation.getAnimation(), for: .normal)
        
        presetAttributes.text = Animation.getAnimation()
        
    }
    
}

