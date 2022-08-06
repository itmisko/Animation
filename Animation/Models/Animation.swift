//
//  Animation.swift
//  Animation
//
//  Created by Sergei Mishchenko on 05.08.2022.
//

import SpringAnimation

struct Animation {
    let animation: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
}

// MARK: Extension

extension Animation {
    static func getAnimationAttributes() -> Animation {
        Animation(animation: getAnimation(),
                  curve: getCurve(),
                  force: Float.random(in: 0...1.5),
                  duration: Float.random(in: 0...1.5),
                  delay: Float.random(in: 0...1.5)
        )
    }
}

extension Animation {
    static func getAnimation() -> String {
        var animationAttributes = ""
        
        for i in AnimationPreset.allCases.shuffled() {
            animationAttributes = i.rawValue
        }
        return animationAttributes
    }
}

extension Animation {
    static private func getCurve() -> String {
        var curveAttributes = ""
        for i in AnimationCurve.allCases.shuffled() {
            curveAttributes = i.rawValue
        }
        return curveAttributes
    }
}
