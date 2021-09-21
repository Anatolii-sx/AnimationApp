//
//  DataManager.swift
//  AnimationApp
//
//  Created by Анатолий Миронов on 21.09.2021.
//

import Foundation
import Spring

class DataManager {
    static let animationPropertiesList = DataManager()
    
    let presets = [
        "shake", "pop", "morph", "squeeze", "wobble", "swing", "flipX",
        "flipY", "fall", "squeezeLeft", "squeezeRight", "squeezeDown",
        "squeezeUp", "slideLeft", "slideRight","slideDown", "slideUp",
        "fadeIn", "fadeOut", "fadeInLeft", "fadeInRight", "fadeInDown",
        "fadeInUp", "zoomIn", "zoomOut", "flash"
    ]
    
    let curves = [
        "spring", "linear", "easeIn", "easeOut", "easeInOut",
        "spring", "linear", "easeIn", "easeOut", "easeInOut",
        "spring", "linear", "easeIn", "easeOut", "easeInOut",
        "spring", "linear", "easeIn", "easeOut", "easeInOut",
        "spring", "linear", "easeIn", "easeOut", "easeInOut",
        "spring", "linear", "easeIn", "easeOut", "easeInOut"
    ]
    
    var forces: [CGFloat] {
        getRandomValues(from: 1.0, to: 2.0)
    }
    
    var durations: [CGFloat] {
        getRandomValues(from: 0.5, to: 1.0)
    }
    
    var delays: [CGFloat] {
        getRandomValues(from: 0.5, to: 1.0)
    }
    
    private func getRandomValues(from: CGFloat, to: CGFloat) -> [CGFloat] {
        var valuesList: [CGFloat] = []
        
        for _ in 0..<presets.count {
            let value = CGFloat.random(in: from...to)
            valuesList.append(round(100 * value) / 100)
        }
        
        return valuesList
    }
    
    init() {}
}
