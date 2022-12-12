//
//  ViewController.swift
//  ProfileWithCoreData
//
//  Created by Sena Kurtak on 28.09.2022.
//


//Projenize başlarken, Use Core Data seçeneğini seçin. Bir profile sayfası oluşturun bu sayfada kullanıcı adı-soyadı, telefon numarası, yaşını ve mail adresini girmesini isteyin. Sayfanın altındaki göster butonuna tıkladığımızda yeni bir sayfa açılmalıdır.  Bilgileri core dataya kaydettikten sonra yeni açılan sayfada gösterin.

import UIKit
import CoreData


class ViewController: UIViewController {
    
    var tfName = UITextField()
    var tfSurname = UITextField()
    var tfPhone = UITextField()
    var tfMail = UITextField()
    var tfAge = UITextField()
    
    var button = UIButton()
    
    
    var profilListe = [Kullanicilar] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setDefaultSize(view: view)
        setUpUI()
    }
    
    func setUpUI(){
        
        view.addSubview(tfName)
        tfName.placeholder = NSLocalizedString("Insert name", comment: "")
        tfName.autocorrectionType = .yes
        tfName.returnKeyType = .done
        tfName.clearButtonMode = .whileEditing
        tfName.frame = CGRect(x: 0.3 * screenWidth, y: 0.15 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        
        view.addSubview(tfSurname)
        tfSurname.placeholder = NSLocalizedString("Insert surname", comment: "")
        tfSurname.autocorrectionType = .yes
        tfSurname.returnKeyType = .done
        tfSurname.clearButtonMode = .whileEditing
        tfSurname.frame = CGRect(x: 0.3 * screenWidth, y: 0.30 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        
        
        view.addSubview(tfPhone)
        tfPhone.placeholder = NSLocalizedString("Insert phone number", comment: "")
        tfPhone.autocorrectionType = .yes
        tfPhone.returnKeyType = .done
        tfPhone.clearButtonMode = .whileEditing
        tfPhone.frame = CGRect(x: 0.3 * screenWidth, y: 0.45 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        
        view.addSubview(tfMail)
        tfMail.placeholder = NSLocalizedString("Insert your mail", comment: "")
        tfMail.autocorrectionType = .yes
        tfMail.returnKeyType = .done
        tfMail.clearButtonMode = .whileEditing
        tfMail.frame = CGRect(x: 0.3 * screenWidth, y: 0.60 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        
        view.addSubview(tfAge)
        tfAge.placeholder = NSLocalizedString("Insert your mail", comment: "")
        tfAge.autocorrectionType = .yes
        tfAge.returnKeyType = .done
        tfAge.clearButtonMode = .whileEditing
        tfAge.frame = CGRect(x: 0.3 * screenWidth, y: 0.75 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        
        view.addSubview(button)
        button.frame = CGRect(x: 0.45 * screenWidth, y: 0.85 * screenHeight, width: 0.15 * screenWidth, height: 0.06 * screenHeight)
        button.backgroundColor = .green
        button.setTitle("Save", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
    }
    
    @objc func buttonTapped(){
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Kullanicilar", in: context)!
        let item = NSManagedObject(entity: entity, insertInto: context)
        
        item.setValue(tfName.text, forKey: "kullanici_adi")
        item.setValue(tfSurname.text, forKey: "kullanici_soyadi")
        item.setValue(tfAge.text, forKey: "kullanici_yas")
        item.setValue(tfMail.text, forKey: "kullanici_mail")
        item.setValue(tfPhone.text, forKey: "kullanici_tel")
        
        do {
            try context.save()
        } catch {
            print(error)
        }
        print("success")
        
        let destVC = InfoViewController()
        destVC.modalPresentationStyle = .fullScreen
        present(destVC, animated: true )
    }
    
    
    
}
