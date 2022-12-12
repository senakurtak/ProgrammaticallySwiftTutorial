//
//  ViewController2.swift
//  PickerTraining
//
//  Created by Sena Kurtak on 3.10.2022.
//

import UIKit

class ViewController2: UIViewController ,UIColorPickerViewControllerDelegate{
    
    var myLabelTwo = UILabel()
    var myContinueButtonTwo = UIButton()
    var changeBackgroundColorButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view:view)
        setupIU()
    }
    
    func setupIU(){
        view.backgroundColor = .green
        view.addSubview(myLabelTwo)
        myLabelTwo.text = "İkinci Sayfadasın!"
        myLabelTwo.center = self.view.center
        myLabelTwo.frame = CGRect(x: 0.40 * screenWidth, y: 0.15 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        
        view.addSubview(changeBackgroundColorButton)
        changeBackgroundColorButton.frame = CGRect(x: 0.3 * screenWidth, y: 0.50 * screenHeight, width: 0.4 * screenWidth, height: 0.06 * screenHeight)
        changeBackgroundColorButton.backgroundColor = .green
        changeBackgroundColorButton.setTitle("BG Değiştir", for: .normal)
        changeBackgroundColorButton.setTitleColor(.black, for: .normal)
        changeBackgroundColorButton.addTarget(self, action: #selector(changeBackgroundColor), for: .touchUpInside)
        
        
        view.addSubview(myContinueButtonTwo)
        myContinueButtonTwo.frame = CGRect(x: 0.3 * screenWidth, y: 0.80 * screenHeight, width: 0.4 * screenWidth, height: 0.06 * screenHeight)
        myContinueButtonTwo.backgroundColor = .green
        myContinueButtonTwo.setTitle("Devam", for: .normal)
        myContinueButtonTwo.setTitleColor(.white, for: .normal)
        myContinueButtonTwo.addTarget(self, action: #selector(buttonTappedTwo), for: .touchUpInside)
    }
    
    @objc func buttonTappedTwo(){
        let destVC = ViewController3()
        destVC.modalPresentationStyle = .fullScreen
        destVC.view.backgroundColor = .blue
        present(destVC, animated: true )
    }
    
    @objc func changeBackgroundColor(){
        
        let colorPickerVC = UIColorPickerViewController()
        colorPickerVC.delegate = self
        present(colorPickerVC, animated: true)
    }
  
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        let color = viewController.selectedColor
    }
    
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        let color = viewController.selectedColor
        view.backgroundColor = color
    }
}


