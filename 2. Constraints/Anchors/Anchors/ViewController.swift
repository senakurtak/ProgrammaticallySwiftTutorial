//
//  ViewController.swift
//  Anchors
//
//  Created by Sena Kurtak on 28.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let innerView = UIView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .red
        innerView.backgroundColor = .systemGray5
        view.addSubview(innerView)
        
        innerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        innerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        innerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16).isActive = true
        innerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16).isActive = true
        
        let labelFirst = UILabel()
        labelFirst.numberOfLines = 0
        labelFirst.translatesAutoresizingMaskIntoConstraints = false
        labelFirst.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        
        labelFirst.textColor = UIColor.black
        innerView.addSubview(labelFirst)
        labelFirst.topAnchor.constraint(equalTo: innerView.topAnchor, constant: 16).isActive = true
        labelFirst.leftAnchor.constraint(equalTo: innerView.leftAnchor, constant: 16).isActive = true
        labelFirst.rightAnchor.constraint(equalTo: innerView.rightAnchor, constant: -16).isActive = true
        
        let labelSecond = UILabel()
        labelSecond.translatesAutoresizingMaskIntoConstraints = false
        labelSecond.text = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ' de Finibus Bonorum et Malorum' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, 'Lorem ipsum dolor sit amet..', comes from a line in section 1.10.32."
        
        labelSecond.numberOfLines = 0
        labelSecond.textColor = UIColor.black
        innerView.addSubview(labelSecond)
        labelSecond.topAnchor.constraint(equalTo: labelFirst.bottomAnchor, constant: 32).isActive = true
        labelSecond.leftAnchor.constraint(equalTo: innerView.leftAnchor, constant: 16).isActive = true
        labelSecond.rightAnchor.constraint(equalTo: innerView.rightAnchor, constant: -16).isActive = true

        
    }
}
