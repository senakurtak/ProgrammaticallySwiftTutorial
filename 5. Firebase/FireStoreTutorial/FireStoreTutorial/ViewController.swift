//
//  ViewController.swift
//  FireStoreTutorial
//
//  Created by Sena Kurtak on 12.10.2022.

//Firestore'a bir tane Apple isimli database oluşturun alt klasöründe string şeklinde Macbook Pro, Macbook Air, iPhone ve iPad olsun. Daha sonra bu verileri alt alta bir sayfada gösterin.
import FirebaseFirestore
import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    
    let database = Firestore.firestore()
    
    var label = UILabel()
    var field = UITextField()
    var button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        let docRef = database.document("apple/example")
        docRef.getDocument { snapshot, error in
            guard let data = snapshot?.data(), error == nil else {
                return
            }
            guard let text = data ["text"] as? String else {
                return
            }
            DispatchQueue.main.async {
                self.label.text = text
            }
            print(data)
        }
    }
    
    func setUpUI(){
        view.addSubview(label)
        label.textAlignment = .center
        label.numberOfLines = 0
        
        view.addSubview(field)
        field.placeholder = "Enter text..."
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.black.cgColor
        field.delegate = self
        
        view.addSubview(button)
        button.setTitleColor(.black, for: .normal)
        button.setTitle("to Second VC", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        field.frame = CGRect(x: 10,
                             y: 100,
                             width: 200,
                             height: 50)
        
        button.frame = CGRect(x: 10,
                             y: 200,
                             width: 200,
                             height: 50)
        
        label.frame = CGRect(x: 10,
                             y: 400,
                             width: 200,
                             height: 100)

    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text, !text.isEmpty{
            saveData(text: text)
        }
        return true
    }
    
        
    func saveData(text:String){
        let docRef = database.document("apple/example")
        docRef.setData(["text" : text])
    }
    
    @objc func buttonTapped(){
        let destVC = SecondViewController()
        destVC.modalPresentationStyle = .formSheet
        present(destVC, animated: true )
    }
}
