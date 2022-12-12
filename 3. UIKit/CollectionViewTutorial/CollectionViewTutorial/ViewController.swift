//
//  ViewController.swift
//  CollectionViewTutorial
//
//  Created by Sena Kurtak on 6.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let viewController = MyCollectionViewController()
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true) {}

    }


}

