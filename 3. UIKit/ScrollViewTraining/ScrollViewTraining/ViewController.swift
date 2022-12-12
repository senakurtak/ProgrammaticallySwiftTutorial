//
//  ViewController.swift
//  ScrollViewTraining
//
//  Created by Sena Kurtak on 4.10.2022.
//

import UIKit

// Ekran yüksekliğinin iki katı büyüklüğünde bir scrollview tanımlayın. Bu scroll içerisinde sekiz tane label olmalı ekran ilk açıldığında ilk dört tanesini, kaydırdığımızda diğer dördünü görmemiz gerekmektedir.

//var label1 = UILabel()
//var label2 = UILabel()
//var label3 = UILabel()
//var label4 = UILabel()
//var label5 = UILabel()
//var label6 = UILabel()
//var label7 = UILabel()
//var label8 = UILabel()



let scrollView = UIScrollView()



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        setupScrollView()
        
        setDefaultSize(view: view)
        
        setupViews()
    }
    
    func setupScrollView(){

        view.addSubview(scrollView)

        scrollView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        scrollView.contentSize = CGSize(width: screenWidth, height: 2 * screenHeight)
        }
    func setupViews(){
        
        scrollView.addSubview(titleLabel)
        
        titleLabel.frame = CGRect(x: 0.05 * screenWidth, y: 0.05 * screenHeight, width: 0.9 * screenWidth, height: 0.5 * screenHeight)

        scrollView.addSubview(titleLabelSecond)
        titleLabelSecond.frame = CGRect(x: 0.05 * screenWidth, y: 0.6 * screenHeight, width: 0.9 * screenWidth, height: 0.4 * screenHeight)

        scrollView.addSubview(titleLabelThird)
        titleLabelThird.frame = CGRect(x: 0.05 * screenWidth, y: 1.05 * screenHeight, width: 0.9 * screenWidth, height: 0.4 * screenHeight)

        
        scrollView.addSubview(titleLabelFourth)
        titleLabelFourth.frame = CGRect(x: 0.05 * screenWidth, y: 1.65 * screenHeight, width: 0.9 * screenWidth, height: 0.4 * screenHeight)

    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "LABEL 1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        label.numberOfLines = 0
//        label.sizeToFit()
        label.textColor = UIColor.white
//        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let titleLabelSecond: UILabel = {
        let label = UILabel()
        label.text = "LABEL 2  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        label.numberOfLines = 0
//        label.sizeToFit()
        label.textColor = UIColor.white
//        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let titleLabelThird: UILabel = {
        let label = UILabel()
        label.text = "LABEL 3 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        label.numberOfLines = 0
//        label.sizeToFit()
        label.textColor = UIColor.white
//        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let titleLabelFourth: UILabel = {
        let label = UILabel()
        label.text = "LABEL 4 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        label.numberOfLines = 0
//        label.sizeToFit()
        label.textColor = UIColor.white
//        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    

}

