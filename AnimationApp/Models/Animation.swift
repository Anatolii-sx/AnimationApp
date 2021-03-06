//
//  Animation.swift
//  AnimationApp
//
//  Created by Анатолий Миронов on 21.09.2021.
//

struct Animation {
    let preset: String
    let curve: String
    let force: String
    let duration: String
    let delay: String
}

extension Animation {
    static func getAnimationsList() -> [Animation] {
        var animations: [Animation] = []
        
        let presets = DataManager.shared.presets.shuffled()
        let curves = DataManager.shared.curves.shuffled()
        
        let forces = getRandomValues(from: 1.0, to: 2.0)
        let durations = getRandomValues(from: 0.5, to: 1.0)
        let delays = getRandomValues(from: 0.5, to: 1.0)
        
        let countOfIterations = min(presets.count, curves.count)
        
        for index in 0..<countOfIterations {
            animations.append(
                Animation(
                    preset: presets[index],
                    curve: curves[index],
                    force: forces[index],
                    duration: durations[index],
                    delay: delays[index])
            )
        }

        return animations
    }
    
    static func getRandomValues(from: Double, to: Double) -> [String] {
        var valuesList: [String] = []
        
        for _ in 0..<DataManager.shared.presets.count {
            let value = Double.random(in: from...to)
            valuesList.append(String(format: "%.2f", value))
        }
        
        return valuesList
    }
}
