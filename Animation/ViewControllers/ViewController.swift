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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startAnimation(_ sender: SpringButton) {
        animationView.animation = "wobble"
        animationView.curve = "easeInOutSine"
        animationView.force = 2
        animationView.duration = 1
        animationView.delay = 1
        animationView.animate()
        
        sender.animation = "swing"
        sender.animate()
    }
    
}

