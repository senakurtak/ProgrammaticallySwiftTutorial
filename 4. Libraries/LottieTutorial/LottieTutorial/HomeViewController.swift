//
//  HomeViewController.swift
//  LottieTutorial
//
//  Created by Sena Kurtak on 10.10.2022.
//

import UIKit
import Lottie

class HomeViewController: UIViewController {
    
    var animationViewSecond = AnimationView()
    var startStopButton = UIButton()
    var isStart = true

    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view: view)
        startStop()
}
    
    func startStop(){

        animationViewSecond.animation = Animation.named("113034-start-stop-toggle")
        animationViewSecond.frame = CGRect(x: 0, y: 0, width: 500, height: 500)
        animationViewSecond.center = view.center
        view.backgroundColor = .white
        animationViewSecond.contentMode = .scaleAspectFit
        animationViewSecond.loopMode = .loop
        animationViewSecond.play()
        view.addSubview(animationViewSecond)
        
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(animationTapped))
        animationViewSecond.addGestureRecognizer(gesture)

//        startStopButton.frame = CGRect(x: screenWidth * 0.2, y: screenHeight * 0.80, width: screenWidth * 0.20, height: 30)
//        startStopButton.backgroundColor = .blue
//        startStopButton.setTitleColor(.black, for: .normal)
//        startStopButton.setTitle("Start", for: .normal)
//        startStopButton.addTarget(self, action: #selector(animationTapped), for: .touchUpInside)
//        view.addSubview(startStopButton)

    }
    
    
    @objc func animationTapped(){

//        if isStart {
//            animationViewSecond.stop()
//        } else {
//            animationViewSecond.play()
//        }
        isStart.toggle()
      isStart ? animationViewSecond.play() : animationViewSecond.stop()
   
    }
    
}
