//
//  ViewController.swift
//  CGRect's
//
//  Created by Sena Kurtak on 28.09.2022.
//

import UIKit

class ViewController: UIViewController {
    let redView = UIView()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        getDeviceSize(view: view)
        view.backgroundColor = .blue
        view.addSubview(redView)
        redView.backgroundColor = .red
        redView.frame = CGRect(x: screenWidth * 0.25, y: screenHeight * 0.1, width: screenWidth * 0.5, height: screenHeight * 0.1)
    }
}
