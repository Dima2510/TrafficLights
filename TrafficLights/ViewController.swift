//
//  ViewController.swift
//  TrafficLights
//
//  Created by Дмитрий Процак on 12.07.2022.
//
import UIKit

enum CurrentColor {
    case red,orange,green
}


class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var orangeLigt: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var toggleButton: UIButton!
    
    
    private var currentColor = CurrentColor.red
    private let lightIsOn : CGFloat = 1
    private let lightIsOff : CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        toggleButton.layer.cornerRadius = 15
        redLight.alpha = lightIsOff
        orangeLigt.alpha = lightIsOff
        greenLight.alpha = lightIsOff
      
        
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
       orangeLigt.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
        
        print("Размер стороны доступный из viewWillLayoutSubviews: ", redLight.frame.height)
    }

    @IBAction func changedButton() {
        
        toggleButton.setTitle("Next", for: .normal)
        
        switch currentColor {
        case .red :
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            currentColor = .orange
        case .orange :
            redLight.alpha = lightIsOff
            orangeLigt.alpha = lightIsOn
            currentColor = .green
        case .green :
            greenLight.alpha = lightIsOn
            orangeLigt.alpha = lightIsOff
            currentColor = .red
        }
    }
    
    

}
    
        
    


