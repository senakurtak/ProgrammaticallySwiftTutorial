//
//  ViewController.swift
//  SliderTraining
//
//  Created by Sena Kurtak on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var mySlider = UISlider()
    var myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view: view)
        setupIU()
    }
    
    func setupIU(){
        view.addSubview(mySlider)
        view.backgroundColor = .lightGray
        mySlider.center = self.view.center
        mySlider.minimumValue = 18
        mySlider.maximumValue = 70
        mySlider.value = 18
        mySlider.isContinuous = true
        mySlider.tintColor = UIColor.green
        mySlider.isContinuous = true
        mySlider.addTarget(self, action: #selector(sliderValueDidChange(_:)), for: .valueChanged)
        mySlider.thumbTintColor = UIColor.blue
        
        view.addSubview(myLabel)
        myLabel.text = "Slider ile yaşınızı belirleyin"
        myLabel.frame = CGRect(x: 0.3 * screenWidth, y: 0.15 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
    }
    @objc func sliderValueDidChange(_ slider: UISlider){
        myLabel.text = "Yaşınız : \(Int(slider.value))"
    }
}
