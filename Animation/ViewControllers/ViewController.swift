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
    
    var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startAnimation(_ sender: SpringButton) {
        startAnimationButton.setTitle("Run " + Animation.getAnimation(), for: .normal)
    }
    
}

