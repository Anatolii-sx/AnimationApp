//
//  MainViewController.swift
//  AnimationApp
//
//  Created by Анатолий Миронов on 20.09.2021.
//

import Spring

class MainViewController: UIViewController {

    var animations = Animation.getAnimationsList()
    
    var preset: String = ""
    var curve: String = ""
    var force: CGFloat = 0
    var duration: CGFloat = 0
    var delay: CGFloat = 0
    
    @IBOutlet var springView: SpringView!
    @IBOutlet var propertiesLabel: UILabel!
    @IBOutlet var springRunButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springRunButton.layer.cornerRadius = 10
        springView.layer.cornerRadius = 10
        
        getRandomPropertiesForAnimation()
        
        getPropertiesForLabel()
    }

    @IBAction func springRunButtonTapped(_ sender: SpringButton) {
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
        force = randomAnimation?.force ?? 1
        duration = randomAnimation?.duration ?? 1
        delay = randomAnimation?.delay ?? 0.5
    }
    
    private func getButtonTitle() {
        springRunButton.setTitle("Run \(preset)", for: .normal)
    }
}
