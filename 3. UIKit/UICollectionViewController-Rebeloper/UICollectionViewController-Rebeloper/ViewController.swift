//
//  ViewController.swift
//  UICollectionViewController-Rebeloper
//
//  Created by Sena Kurtak on 7.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let toHouseButton = UIButton()
    let toHomeButton = UIButton()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setDefaultSize(view:view)
        setUpUI()
    }
    
    func setUpUI(){
        
        view.addSubview(toHouseButton)
        toHouseButton.frame = CGRect(x: 0.30 * screenWidth, y: 0.4 * screenHeight, width: 0.4 * screenWidth, height: 0.1 * screenHeight)
        toHouseButton.setTitle("Vertical", for: .normal)
        toHouseButton.setTitleColor(.black, for: .normal)
        toHouseButton.addTarget(self, action: #selector(toHouseButtonTapped), for: .touchUpInside)
        toHouseButton.backgroundColor = .magenta
        
        view.addSubview(toHomeButton)
        toHomeButton.frame = CGRect(x: 0.30 * screenWidth, y: 0.8 * screenHeight, width: 0.4 * screenWidth, height: 0.1 * screenHeight)
        toHomeButton.setTitle("Horizontal", for: .normal)
        toHomeButton.setTitleColor(.black, for: .normal)
        toHomeButton.addTarget(self, action: #selector(toHomeButtonTapped), for: .touchUpInside)
        toHomeButton.backgroundColor = .blue
        
    }
    
    @objc func toHouseButtonTapped(){

        let destVC = UINavigationController(rootViewController: VerticalCollectionVC())
        destVC.modalPresentationStyle = .fullScreen
        present(destVC, animated: true )
    }
    
    @objc func toHomeButtonTapped(){
        
        let destVC = UINavigationController(rootViewController: HorizontalCollectionVC())
        destVC.modalPresentationStyle = .fullScreen
        present(destVC, animated: true )
        
    }
    
}
