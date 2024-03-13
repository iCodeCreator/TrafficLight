//
//  ViewController.swift
//  TrafficLight
//
//  Created by abd ul’Karim 📚 on 13.03.2024.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

final class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var switchTrafficLightButton: UIButton!
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchTrafficLightButton.layer.cornerRadius = 13
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
    }
    
    @IBAction func switchTrafficLightDidTapped(_ sender: UIButton) {
        if switchTrafficLightButton.currentTitle == "START" {
            switchTrafficLightButton.setTitle("NEXT", for: .normal)
        }
        switch currentLight {
        case .red:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = 1
            redLight.alpha = 0.3
            currentLight = .green
        case .green:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            currentLight = .red
        }
    }
    
}


