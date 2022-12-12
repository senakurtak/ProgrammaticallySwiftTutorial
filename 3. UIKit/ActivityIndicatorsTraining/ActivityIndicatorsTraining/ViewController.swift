//
//  ViewController.swift
//  ActivityIndicatorsTraining
//
//  Created by Sena Kurtak on 3.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // Butona basılınca indicator ekrana gelir, Ekranda 0 sayısı belirir bu sayı bir döngü ile 100'e kadar devam eder. Sayı 100'e ulaşınca indicator ekrandan silinir. Indicator'un rengi turuncu ve background rengi yeşil olmalıdır.
    
    var myActivityIndicator = UIActivityIndicatorView()
    var myButton = UIButton()
    var myTimingLabel = UILabel()
    var timer : Timer?
    var count = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setDefaultSize(view: view)
        myTimingLabel.text = String(count)
        setupUI()
        
    }
    
    func  setupUI(){
        
        view.backgroundColor = .white
        
        view.addSubview(myButton)
        myButton.frame =  CGRect(x: 0.20 * screenWidth, y: 0.65 * screenHeight, width: 0.6 * screenWidth, height: 0.06 * screenHeight)
        myButton.backgroundColor = .green
        myButton.setTitle("Tap to begin activity indicator", for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        myButton.addTarget(self, action: #selector(myActivityIndicatorTapped), for: .touchUpInside)
        
        
    }
    
    @objc func myActivityIndicatorTapped (){
        view.addSubview(myActivityIndicator)
        myActivityIndicator.style = UIActivityIndicatorView.Style.medium
        myActivityIndicator.hidesWhenStopped = true
        myActivityIndicator.startAnimating()
        myActivityIndicator.frame = CGRect(x: 0.45 * screenWidth, y: 0.35 * screenHeight, width: 0.1 * screenWidth, height: 0.1 * screenWidth)
        myActivityIndicator.color = .orange
        myActivityIndicator.backgroundColor = .green
        
        view.addSubview(myTimingLabel)
        myTimingLabel.frame = CGRect(x: 0.45 * screenWidth, y: 0.45 * screenHeight, width: 0.30 * screenWidth, height: 0.1 * screenWidth)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerFunc), userInfo: nil,  repeats: true)

    }
    
    
    @objc func timerFunc(){
        if count < 100 {
            count += 1
            myTimingLabel.text = String(count)
        }
        else if count == 100 {
            myActivityIndicator.stopAnimating()
            myTimingLabel.text = "Time is up!"
        }
    }

}
