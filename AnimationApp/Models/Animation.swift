//
//  Animation.swift
//  AnimationApp
//
//  Created by Анатолий Миронов on 21.09.2021.
//

import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
}

extension Animation {
    static func getAnimationsList() -> [Animation] {
        var animations: [Animation] = []
        
        let presets = DataManager.animationPropertiesList.presets.shuffled()
        let curves = DataManager.animationPropertiesList.curves.shuffled()
        
        let countOfIterations = min(presets.count, curves.count)
        
        for index in 0..<countOfIterations {
            animations.append(
                Animation(
                    preset: presets[index],
                    curve: curves[index],
                    force: DataManager.animationPropertiesList.forces[index],
                    duration: DataManager.animationPropertiesList.durations[index],
                    delay: DataManager.animationPropertiesList.delays[index])
            )
        }

        return animations
    }
}
