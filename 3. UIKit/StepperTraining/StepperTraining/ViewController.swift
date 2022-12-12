//
//  ViewController.swift
//  StepperTraining
//
//  Created by Sena Kurtak on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var myStepper = UIStepper()
    var myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setDefaultSize(view: view)
        setupUI()
    }
    
    
    func setupUI(){
        
        view.backgroundColor = .white
        view.addSubview(myStepper)
        view.addSubview(myLabel)
        
        myLabel.frame = CGRect(x: 0.60 * screenWidth, y: 0.10 * screenHeight, width: 0.25 * screenWidth, height: 0.06 * screenHeight)
        myLabel.text = "0"
        
        
        myStepper.frame = CGRect(x: 0.20 * screenWidth, y: 0.10 * screenHeight, width: 0.25 * screenWidth, height: 0.06 * screenHeight)
        myStepper.addTarget(self,
                          action: #selector(stepperValueDidChange(_:)),
                          for: .valueChanged)
    }
    
    
    func configureDefaultStepper(stepper: UIStepper) {
        // Setup the stepper range 0 to 10, initial value 0, increment/decrement factor of 1.
        myStepper.value = 0
        myStepper.minimumValue = 0
        myStepper.maximumValue = 10
        myStepper.stepValue = 1
    }
    
    @objc func stepperValueDidChange(_ stepper: UIStepper) {
        
        myLabel.text = "\(Int(stepper.value))"
    }
}
