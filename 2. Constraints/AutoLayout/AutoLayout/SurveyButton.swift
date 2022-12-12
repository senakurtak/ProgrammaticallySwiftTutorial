//
//  SurveyButton.swift
//  AutoLayout
//
//  Created by Sena Kurtak on 28.09.2022.
//

import UIKit

class SurveyButton : UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton(){
        setTitleColor(.white, for: .normal)
        backgroundColor = .red
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 28)
        layer.cornerRadius = 10
    }
}
