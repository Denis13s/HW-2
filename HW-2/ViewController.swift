//
//  ViewController.swift
//  HW-2
//
//  Created by Denis Yarets on 24/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewSafeArea: UIView!
    
    @IBOutlet weak var lightRed: UIView!
    @IBOutlet weak var lightYellow: UIView!
    @IBOutlet weak var lightGreen: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lightHeight = self.view.frame.size.height * 0.15
        let cornerRaius = lightHeight / 2
        
        lightRed.layer.cornerRadius = cornerRaius
        lightYellow.layer.cornerRadius = cornerRaius
        lightGreen.layer.cornerRadius = cornerRaius
        
        lightRed.alpha = 0.3
        lightYellow.alpha = 0.3
        lightGreen.alpha = 0.3
        
        button.configuration = setButton(title: "Start")
    }

    @IBAction func buttonPressed() {
        button.configuration = setButton(title: "Next")
        
        if lightRed.alpha == 0.3, lightYellow.alpha == 0.3, lightGreen.alpha == 0.3 {
            lightRed.alpha = 1.0
        } else if lightRed.alpha == 1.0 {
            lightRed.alpha = 0.3
            lightYellow.alpha = 1.0
        } else if lightYellow.alpha == 1.0 {
            lightYellow.alpha = 0.3
            lightGreen.alpha = 1.0
        } else {
            lightGreen.alpha = 0.3
            lightRed.alpha = 1.0
        }
    }
    
    private func setButton(title: String) -> UIButton.Configuration {
        var button = UIButton.Configuration.filled()
        button.title = title
        button.buttonSize = .large
        button.cornerStyle = .large
        button.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return button
    }
    
}

