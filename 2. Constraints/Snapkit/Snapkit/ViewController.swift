//
//  ViewController.swift
//  Snapkit
//
//  Created by Sena Kurtak on 29.09.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var box = UIView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        self.view.addSubview(view)
        box.backgroundColor = .green
        box.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(50)
            make.center.equalTo(self.view)
        }
    }
    
}
