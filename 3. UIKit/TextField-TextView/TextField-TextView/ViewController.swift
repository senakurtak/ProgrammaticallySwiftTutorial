//
//  ViewController.swift
//  TextField-TextView
//
//  Created by Sena Kurtak on 3.10.2022.
//

import UIKit

class ViewController: UIViewController {
    // Telefon numarası, mail adresi ve mesaj içeren bir textfield oluşturun.
    // Gönder butonuna basıldığında alttaki label içinde görünsün.
    // Lorem ipsum metni içeren bir textview oluşturun.
    
    var myPhoneTextField = UITextField()
    var myMailAdressTextField = UITextField()
    var myMessageTextField = UITextField()
    var myInfoLabel = UILabel()
    var myCollectButton = UIButton()
    var myTextView = UITextView()
    var myTextViewButton = UIButton()
    var myLoremIpsumTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view: view)
        setupIU()
    }
    
    func setupIU() {
        view.backgroundColor = .lightGray
        
        view.addSubview(myPhoneTextField)
        myPhoneTextField.placeholder = NSLocalizedString("Insert phone number", comment: "")
        myPhoneTextField.autocorrectionType = .yes
        myPhoneTextField.returnKeyType = .done
        myPhoneTextField.clearButtonMode = .whileEditing
        myPhoneTextField.frame = CGRect(x: 0.3 * screenWidth, y: 0.15 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        
        view.addSubview(myMailAdressTextField)
        myMailAdressTextField.placeholder = NSLocalizedString("Insert email adress", comment: "")
        myMailAdressTextField.autocorrectionType = .yes
        myMailAdressTextField.returnKeyType = .done
        myMailAdressTextField.clearButtonMode = .whileEditing
        myMailAdressTextField.frame = CGRect(x: 0.3 * screenWidth, y: 0.25 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        
        view.addSubview(myMessageTextField)
        myMessageTextField.placeholder = NSLocalizedString("Insert message", comment: "")
        myMessageTextField.autocorrectionType = .yes
        myMessageTextField.returnKeyType = .done
        myMessageTextField.clearButtonMode = .whileEditing
        myMessageTextField.frame = CGRect(x: 0.3 * screenWidth, y: 0.35 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        
        
        view.addSubview(myCollectButton)
        myCollectButton.frame =  CGRect(x: 0.25 * screenWidth, y: 0.45 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        myCollectButton.backgroundColor = .green
        myCollectButton.setTitle("Collect infos", for: .normal)
        myCollectButton.setTitleColor(.white, for: .normal)
        myCollectButton.addTarget(self, action: #selector(myCollectionButtonTapped), for: .touchUpInside)
        
        view.addSubview(myInfoLabel)
        myInfoLabel.frame =  CGRect(x: 0.20 * screenWidth, y: 0.55 * screenHeight, width: 0.60 * screenWidth, height: 0.06 * screenHeight)
        myInfoLabel.text = ""
        myInfoLabel.textColor = .red
        
        view.addSubview(myTextViewButton)
        myTextViewButton.frame =  CGRect(x: 0.25 * screenWidth, y: 0.65 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        myTextViewButton.backgroundColor = .green
        myTextViewButton.setTitle("Show Lorem Ipsum Text", for: .normal)
        myTextViewButton.setTitleColor(.white, for: .normal)
        myTextViewButton.addTarget(self, action: #selector(myTextViewButtonTapped), for: .touchUpInside)
     
        
        view.addSubview(myLoremIpsumTextView)
        myLoremIpsumTextView.frame =  CGRect(x: 0.20 * screenWidth, y: 0.75 * screenHeight, width: 0.60 * screenWidth, height: 0.30 * screenHeight)
        myLoremIpsumTextView.text = ""
        myLoremIpsumTextView.textColor = .red
        myLoremIpsumTextView.backgroundColor = .lightGray
    }
    
    @objc func myCollectionButtonTapped(){
        myInfoLabel.text = "\(myPhoneTextField.text!) \(myMailAdressTextField.text!)  \(myMessageTextField.text!)"
    }
    
    @objc func myTextViewButtonTapped(){
        myLoremIpsumTextView.text = "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."
    }
}
