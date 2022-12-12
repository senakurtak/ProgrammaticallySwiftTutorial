//
//  ViewController.swift
//  SegmentedControlTraining
//
//  Created by Sena Kurtak on 5.10.2022.
//

/*Üç seçeneği olan bir segmented control oluşturun.
 Segmentlerin isimleri şu şekilde olmalıdır: "Beyaz", "Gri", "Siyah"
 Beyaz sekmesinde arkaplanı beyaz olan ve üzerinde NeonApps logosu olan bir görünüm olmalı.
 Sekmelere göre arkaplan değişmelidir.*/

import UIKit


class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        setDefaultSize(view: view)
        setUpUI()
    }
    
    func setUpUI(){
        
        var neonButton = UIButton()
        let items = ["Beyaz" , "Gri", "Siyah"]
        let segmentedControl = UISegmentedControl(items : items)
        
        segmentedControl.center = self.view.center
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(ViewController.indexChanged(_:)), for: .valueChanged)
        
        segmentedControl.layer.cornerRadius = 5.0
        segmentedControl.backgroundColor = .red
        segmentedControl.tintColor = .yellow
        
        self.view.addSubview(segmentedControl)
        
        view.addSubview(neonButton)
        neonButton.frame = CGRect(x: 0.4 * screenWidth, y: 0.4 * screenHeight / 2, width: 0.2 * screenWidth, height: 0.2 * screenWidth)
        neonButton.layer.masksToBounds = true
        neonButton.layer.cornerRadius = neonButton.frame.height / 2
        neonButton.setBackgroundImage(UIImage(named: "neon"), for: .normal)
        //        secondButton.addTarget(self, action: #selector(secondButtonTapped), for: .touchUpInside)
    }
    
    @objc func indexChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            view.backgroundColor = .white
            print("Beyaz");
        case 1:
            view.backgroundColor = .gray
            print("Gri")
        case 2:
            view.backgroundColor = .black
            print("Siyah")
        default:
            break
        }
    }
}


