//
//  ViewController.swift
//  StackViewTraining
//
//  Created by Sena Kurtak on 3.10.2022.
//

import UIKit

// Bir stackview içerisinde 4tane label eklemeniz gerekmektedir. Eklediğiniz eşdeğer labellar ekranı çevirdiğimizde de hareket etmelidir.

class ViewController: UIViewController {
    
    
    
    
    //stack view e bunları eleman olarak eklersin.
    override func viewDidLoad() {
        super.viewDidLoad()
        createStackView()
    }
    
    
    func createStackView(){
        view.backgroundColor = .lightGray
        
        let labelFirst = UILabel()
        labelFirst.text = "Hello First"
        labelFirst.textAlignment = .center
        labelFirst.font = .systemFont(ofSize: 10, weight: .bold)

        let labelSecond = UILabel()
        labelSecond.text = "Hello Second"
        labelSecond.textAlignment = .center
        labelSecond.font = .systemFont(ofSize: 10, weight: .bold)

        let labelThird = UILabel()
        labelThird.text = "Hello Third"
        labelThird.textAlignment = .center
        labelThird.font = .systemFont(ofSize: 10, weight: .bold)

        let labelFourth = UILabel()
        labelFourth.text = "Hello Fourth"
        labelFourth.textAlignment = .center
        labelFourth.font = .systemFont(ofSize: 10, weight: .bold)

                
        let stackView = UIStackView(arrangedSubviews: [labelFirst, labelSecond, labelThird, labelFourth])
        stackView.backgroundColor = .systemCyan
        
        // config
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.isBaselineRelativeArrangement = true
     
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    
        
    }
}
