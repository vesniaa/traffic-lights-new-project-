//
//  ViewController.swift
//  traffic lights new project
//
//  Created by Евгения Аникина on 02.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var buttonColorView: UIButton!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var redLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    let defaultAlphaLabel: CGFloat = 0.3
    let startAlphaLabel: CGFloat = 1
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    
    }
    
    
    @IBAction func buttonColorViewPressed() {
        buttonColorView.setTitle("NEXT", for: .normal)
        if redLightView.alpha == startAlphaLabel  {
            redLightView.alpha = defaultAlphaLabel
            yellowLightView.alpha = startAlphaLabel
        } else if yellowLightView.alpha == startAlphaLabel {
            yellowLightView.alpha = defaultAlphaLabel
            greenLightView.alpha = startAlphaLabel
        } else if greenLightView.alpha == startAlphaLabel {
            greenLightView.alpha = defaultAlphaLabel
            redLightView.alpha = startAlphaLabel
        } else {
            redLightView.alpha = startAlphaLabel
        }
    }
    
}

