//
//  SecondViewController.swift
//  FireStoreTutorial
//
//  Created by Sena Kurtak on 12.10.2022.
//

import UIKit
import FirebaseFirestore

class SecondViewController: UIViewController {

    var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setUpUI()
    }
    

    func setUpUI(){
        view.addSubview(label)
        label.textAlignment = .center
        label.numberOfLines = 0

    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        label.frame = CGRect(x: 10,
                             y: view.safeAreaInsets.top + 10 + 60,
                             width: view.frame.size.width - 20,
                             height: 100)
    }

}
