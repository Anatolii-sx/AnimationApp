//
//  DataManager.swift
//  AnimationApp
//
//  Created by Анатолий Миронов on 21.09.2021.
//

class DataManager {
    static let shared = DataManager()
    
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
    
    init() {}
}
