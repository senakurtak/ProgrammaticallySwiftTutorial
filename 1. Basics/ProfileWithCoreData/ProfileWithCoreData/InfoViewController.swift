//
//  InfoViewController.swift
//  ProfileWithCoreData
//
//  Created by Sena Kurtak on 10.10.2022.
//

import UIKit
import CoreData

class InfoViewController: UIViewController {
    
    var labelName = UILabel()
    var labelSurname = UILabel()
    var labelPhone = UILabel()
    var labelMail = UILabel()
    var labelAge = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setDefaultSize(view: view)
        setUpUI()
    }
    
    func setUpUI(){
        view.addSubview(labelName)
        labelName.text = "Name : "
        labelName.textColor = .black
        labelName.frame = CGRect(x: 0.3 * screenWidth, y: 0.15 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        view.addSubview(labelSurname)
        labelSurname.text = "Surname"
        labelSurname.textColor = .black
        labelSurname.frame = CGRect(x: 0.3 * screenWidth, y: 0.30 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        view.addSubview(labelAge)
        labelAge.text = "Age : "
        labelAge.textColor = .black
        labelAge.frame = CGRect(x: 0.3 * screenWidth, y: 0.45 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        view.addSubview(labelPhone)
        labelPhone.text = "Phone : "
        labelPhone.textColor = .black
        labelPhone.frame = CGRect(x: 0.3 * screenWidth, y: 0.60 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        view.addSubview(labelMail)
        labelMail.text = "Mail : "
        labelMail.textColor = .black
        labelMail.frame = CGRect(x: 0.3 * screenWidth, y: 0.75 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
    }
    
    // fetchItems
}
