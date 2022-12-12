//
//  ViewController.swift
//  PickerTraining
//
//  Created by Sena Kurtak on 2.10.2022.
//

import UIKit

class ViewController: UIViewController , UIFontPickerViewControllerDelegate{
    
    var myLabelOne = UILabel()
    var myContinueButtonOne = UIButton()
    var changeFontButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view:view)
        setupIU()
    }
    
    func setupIU(){
        view.backgroundColor = .magenta
        view.addSubview(myLabelOne)
        myLabelOne.text = "Neon Apps'e Hoşgeldin!"
        myLabelOne.backgroundColor = .magenta
        myLabelOne.font = .systemFont(ofSize: 12)
        myLabelOne.textAlignment = .center
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "neon")!)
        myLabelOne.frame = CGRect(x: 0.25 * screenWidth, y: 0.15 * screenHeight, width: 0.50 * screenWidth, height: 0.06 * screenHeight)

        view.addSubview(changeFontButton)
        changeFontButton.frame = CGRect(x: 0.30 * screenWidth, y: 0.5 * screenHeight, width: 0.4 * screenWidth, height: 0.06 * screenHeight)
        changeFontButton.backgroundColor = .magenta
        changeFontButton.setTitle("Değiştir", for: .normal)
        changeFontButton.setTitleColor(.white, for: .normal)
        print("Değiştir tıklandı.")
        changeFontButton.addTarget(self, action: #selector(didTapPickFont), for: .touchUpInside)
        
        view.addSubview(myContinueButtonOne)
        myContinueButtonOne.frame = CGRect(x: 0.30 * screenWidth, y: 0.8 * screenHeight, width: 0.4 * screenWidth, height: 0.06 * screenHeight)
        myContinueButtonOne.backgroundColor = .magenta
        myContinueButtonOne.setTitle("Devam", for: .normal)
        myContinueButtonOne.setTitleColor(.white, for: .normal)
        myContinueButtonOne.addTarget(self, action: #selector(buttonTappedTwo), for: .touchUpInside)
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    @objc func buttonTappedTwo(){
        let destVC = ViewController2()
        destVC.modalPresentationStyle = .fullScreen
        destVC.view.backgroundColor = .green
        present(destVC, animated: true )
    }
    
    @objc func didTapPickFont(){
        
        let config = UIFontPickerViewController.Configuration()
        config.includeFaces = false
        let vc = UIFontPickerViewController(configuration: config)
        vc.delegate = self
        present(vc, animated: true )
    }
    func fontPickerViewControllerDidCancel(_ viewController: UIFontPickerViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
    func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController) {
        viewController.dismiss(animated: true, completion: nil )
        guard let descriptor =  viewController.selectedFontDescriptor else { return }
        myLabelOne.font = UIFont(descriptor: descriptor, size: 24)
    }
}

