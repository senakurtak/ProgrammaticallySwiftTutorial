//
//  ViewController.swift
//  UIButtonTraining
//
//  Created by Sena Kurtak on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {
    let firstButton = UIButton()
    let secondButton = UIButton()
    let thirdButton = UIButton()
    var isFirstButtonGreen = true
    var menu = ["Development", "Desingn", "Sales"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view: view)
        setupUI()
    }
    
    func setupUI(){
        view.backgroundColor = .gray
        
        view.addSubview(firstButton)
        firstButton.frame = CGRect(x: 0.3 * screenWidth, y: 0.15 * screenHeight, width: 0.4 * screenWidth, height: 0.06 * screenHeight)
        firstButton.backgroundColor = .green
        firstButton.setTitle("Yeşil", for: .normal)
        firstButton.setTitleColor(.white, for: .normal)
        firstButton.addTarget(self, action: #selector(firstButtonTapped), for: .touchUpInside)
        
        view.addSubview(secondButton)
        secondButton.frame = CGRect(x: 0.4 * screenWidth, y: (screenHeight - 0.2 * screenWidth) / 2, width: 0.2 * screenWidth, height: 0.2 * screenWidth)
        secondButton.layer.masksToBounds = true
        secondButton.layer.cornerRadius = secondButton.frame.height / 2
        secondButton.setBackgroundImage(UIImage(named: "neon"), for: .normal)
        secondButton.addTarget(self, action: #selector(secondButtonTapped), for: .touchUpInside)
        
        view.addSubview(thirdButton)
        thirdButton.frame = CGRect(x: 0.35 * screenWidth, y: (screenHeight * 2) / 3, width: 0.3 * screenWidth, height: 0.2 * screenWidth)
        thirdButton.layer.masksToBounds = true
        thirdButton.layer.cornerRadius = thirdButton.frame.height / 2
        thirdButton.backgroundColor = UIColor.clear
        thirdButton.setTitle("Menu", for: .normal)
        thirdButton.addTarget(self, action: #selector(configureSelectionPopupButton(_:)), for: .touchUpInside)
        thirdButton.showsMenuAsPrimaryAction = true
    }
    
    @objc func firstButtonTapped(){
        isFirstButtonGreen.toggle()
        firstButton.backgroundColor = isFirstButtonGreen ? .green : .red
        firstButton.setTitle(isFirstButtonGreen ? "Yeşil" : "Kırmızı", for: .normal)
        
    }
    
    @objc func secondButtonTapped(){
        if let url = URL(string: "https://www.neonapps.co/") {
            UIApplication.shared.open(url)
        }
    }
    
    //Popup Menu
    @objc func configureSelectionPopupButton(_ button: UIButton) {
        button.menu = UIMenu(children: [
            UIAction(title: "Design", handler: { [self] _ in
                button.setTitle("Design", for: .normal)
            }),
            UIAction(title: "Development", handler: { [self] _ in
                button.setTitle("Development", for: .normal)
            }),
            UIAction(title: "Sales", handler: { [self] _ in
                button.setTitle("Sales", for: .normal)
            })
        ])
    }
}
