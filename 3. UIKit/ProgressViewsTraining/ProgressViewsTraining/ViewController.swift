//
//  ViewController.swift
//  ProgressViewsTraining
//
//  Created by Sena Kurtak on 3.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var myProgressView = UIProgressView()
    var myPlusButton = UIButton()
    var curProgress: Float = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view:view)
        setupIU()
    }
    
    func setupIU(){
        view.backgroundColor = .lightGray
        view.addSubview(myProgressView)
        
        view.addSubview(myPlusButton)
        myPlusButton.setTitle("+", for: .normal)
        myPlusButton.frame = CGRect(x: 0.45 * screenWidth, y: 0.15 * screenHeight, width: 0.1 * screenWidth, height: 0.06 * screenHeight)
        myPlusButton.addTarget(self, action: #selector(incProgress), for: .touchUpInside)
        
        myProgressView.frame = CGRect(x: 0.2 * screenWidth, y: 0.35 * screenHeight, width: 0.6 * screenWidth, height: 0.06 * screenHeight)
        myProgressView.progressViewStyle = .default
        myProgressView.trackTintColor = UIColor.systemBlue
        myProgressView.progressTintColor = UIColor.black
        myProgressView.setProgress(1, animated: false)
    }
        
    @objc func incProgress(_ g: UITapGestureRecognizer?) -> Void {
        // increment progress by 10% on each tap, up to 100%
        curProgress = min(1.0, curProgress + 0.10)
        
        myProgressView.progress = curProgress
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        formatter.maximumFractionDigits = 2
        print(curProgress)
        
        if curProgress == 1.0 {
            curProgress = 0.0
        }
        
    }
    
}
