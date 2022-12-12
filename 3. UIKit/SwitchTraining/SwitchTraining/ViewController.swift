//
//  ViewController.swift
//  SwitchTraining
//
//  Created by Sena Kurtak on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()
    var myFirstSwitch = UISwitch()
    var mySecondSwitch = UISwitch()
    let alert = UIAlertView(title: "title", message: "message", delegate: self, cancelButtonTitle: "ok")

    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view: view)
        setupUI()
        myLabel.text = "Kapalı"
        mySecondSwitch.isOn = false
        
    }
    
    func setupUI(){
        view.backgroundColor = .white
        view.addSubview(myLabel)
        view.addSubview(myFirstSwitch)
        view.addSubview(mySecondSwitch)
        myFirstSwitch.frame = CGRect(x: 0.20 * screenWidth, y: 0.10 * screenHeight, width: 0.25 * screenWidth, height: 0.06 * screenHeight)
        myLabel.frame = CGRect(x: 0.60 * screenWidth, y: 0.10 * screenHeight, width: 0.25 * screenWidth, height: 0.06 * screenHeight)
        myLabel.text = ""
        myFirstSwitch.addTarget(self, action: #selector(switchValueDidChange(_:)), for: .valueChanged)
        
        mySecondSwitch.frame = CGRect(x: 0.20 * screenWidth, y: 0.30 * screenHeight, width: 0.25 * screenWidth, height: 0.06 * screenHeight)
        
        mySecondSwitch.addTarget(self, action: #selector(switchValueDidChangeAlert), for: .valueChanged)
    }
    
    func configureDefaultSwitch(_ switchControl: UISwitch) {
        switchControl.setOn(true, animated: false)
        switchControl.preferredStyle = .sliding
        
        switchControl.addTarget(self,
                                action: #selector(switchValueDidChange(_:)),
                                for: .valueChanged)
    }
    
    func configureCheckboxSwitch(_ switchControl: UISwitch) {
        switchControl.setOn(true, animated: false)
        
        switchControl.addTarget(self,
                                action: #selector(switchValueDidChange(_:)),
                                for: .valueChanged)
        
        // On the Mac, make sure this control take on the apperance of a checkbox with a title.
        if traitCollection.userInterfaceIdiom == .mac {
            switchControl.preferredStyle = .checkbox
            
            // Title on a UISwitch is only supported when running Catalyst apps in the Mac Idiom.
            switchControl.title = NSLocalizedString("SwitchTitle", comment: "")
        }
    }
    
    @objc func switchValueDidChange(_ switch: UISwitch) {
        
        if myFirstSwitch.isOn {
            myLabel.text = "Açık"
        }
        else {
            myLabel.text = "Kapalı"                       }
    }
    
    @objc func switchValueDidChangeAlert(_ switch: UISwitch) {
        
        if mySecondSwitch.isOn {

            alert.title = "Açık"
            alert.message = "Açıldı"
            alert.show()
        }
        
        else {

            alert.title = "Kapalı"
            alert.message = "Kapatıldı"
            
            alert.show()
        }
    }
}
