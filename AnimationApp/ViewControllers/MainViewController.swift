//
//  MainViewController.swift
//  AnimationApp
//
//  Created by Анатолий Миронов on 20.09.2021.
//

import Spring

class MainViewController: UIViewController {

    @IBOutlet var springView: SpringView!
    
    @IBOutlet var propertiesLabel: UILabel!
    
    @IBOutlet var springRunButton: SpringButton!
    
    private var animations = Animation.getAnimationsList()
    
    private var preset: String = ""
    private var curve: String = ""
    private var force: CGFloat = 0
    private var duration: CGFloat = 0
    private var delay: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springRunButton.layer.cornerRadius = 10
        springView.layer.cornerRadius = 10
        
        getRandomPropertiesForAnimation()
        
        getPropertiesForLabel()
    }

    @IBAction func springRunButtonTapped() {
        runSpringViewAnimation()
        getPropertiesForLabel()
        getRandomPropertiesForAnimation()
        getButtonTitle()
    }
    
    private func runSpringViewAnimation() {
        springView.animation = preset
        springView.curve = curve
        springView.force = force
        springView.duration = duration
        springView.delay = delay
        
        springView.animate()
    }
    
    private func getPropertiesForLabel() {
        propertiesLabel.text = """
        preset: \(preset)
        curve: \(curve)
        force: \(force)
        duration: \(duration)
        delay: \(delay)
        """
    }
    
    private func getRandomPropertiesForAnimation() {
        let randomAnimation = animations.randomElement()
        
        preset = randomAnimation?.preset ?? "shake"
        curve = randomAnimation?.curve ?? "spring"
        force = CGFloat(Double(randomAnimation?.force ?? "1") ?? 1)
        duration = CGFloat(Double(randomAnimation?.duration ?? "1") ?? 1)
        delay = CGFloat(Double(randomAnimation?.delay ?? "0.5") ?? 0.5)
    }
    
    private func getButtonTitle() {
        springRunButton.setTitle("Run \(preset)", for: .normal)
    }
}

