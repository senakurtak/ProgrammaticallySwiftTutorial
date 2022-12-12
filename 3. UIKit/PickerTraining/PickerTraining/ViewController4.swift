//
//  ViewController4.swift
//  PickerTraining
//
//  Created by Sena Kurtak on 3.10.2022.
//

//Son sayfanız için UIDatePicker kullanmanın. Önce bir UITextField oluşturun, UIDatePicker ile UITextField'ı bağlayın. Seçilen tarihi UITextField içerisinde gösterin. Not: UIDatePicker iOS 14 ile yeni versiyona güncellendi. Eski hali değil, yeni halini yazın. 

import UIKit

class ViewController4: UIViewController {
    var myLabel = UILabel()
    var myContinueButton = UIButton()
    var myContinueButtonFourth = UIButton()
    var myTextField = UITextField()
    let datePicker = UIDatePicker()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view:view)
        setupIU()
        
        myTextField.textAlignment = .center
        
        createDatePicker()

    }
    
    func setupIU(){
        view.backgroundColor = .orange
        view.addSubview(myLabel)
        myLabel.text = "Son sayfadasın!"
        myLabel.center = self.view.center
        myLabel.frame = CGRect(x: 0.40 * screenWidth, y: 0.15 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        
        view.addSubview(myTextField)
        myTextField.placeholder = NSLocalizedString("UIDatePicker bağlanacak", comment: "")
        myTextField.autocorrectionType = .yes
        myTextField.returnKeyType = .done
        myTextField.clearButtonMode = .whileEditing
        myTextField.frame = CGRect(x: 0.2 * screenWidth, y: 0.30 * screenHeight, width: 0.6 * screenWidth, height: 0.06 * screenHeight)

        view.addSubview(myContinueButtonFourth)
        myContinueButtonFourth.frame = CGRect(x: 0.3 * screenWidth, y: 0.80 * screenHeight, width: 0.4 * screenWidth, height: 0.06 * screenHeight)
        myContinueButtonFourth.backgroundColor = .blue
        myContinueButtonFourth.setTitle("İlk sayfaya git", for: .normal)
        myContinueButtonFourth.setTitleColor(.white, for: .normal)
                myContinueButtonFourth.addTarget(self, action: #selector(buttonTappedFourth), for: .touchUpInside)
    }
    
    func createDatePicker() {
            
            //DatePicker'da oluşan tarihi textfield'a kaydetmek için kullancağımız butonu koyacağımız barı oluşturuyoruz.
            let toolbar = UIToolbar()
            toolbar.sizeToFit()
            
            //Barda bulunacak butonu oluşturduk.
            let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: nil, action: #selector(doneButtonClicked))
            toolbar.setItems([doneButton], animated: true)
            
            //inputAccessoryView : Text field için sistem tarafından sunulan klavyeye aksesuar görünümü eklemek için kullanıyoruz. Bizde butonumuz için bir toolbar ekliyoruz.
        myTextField.inputAccessoryView = toolbar
            
            //inputAccessoryView : Text field için sistem tarafından sunulan klavyenin yerini alacak bir görünüm eklemek için kullanıyoruz. Bizde klavye yerine datePicker kullanıyoruz.
        myTextField.inputView = datePicker
            
            //DatePicker'ımızın modunu belirliyor. Tarih, saat, zamanlayıcı gibi.
            datePicker.datePickerMode = .date
        }
    
    @objc func doneButtonClicked() {
           
           //Yazdıracağımız tarihin formatını belirliyoruz.
           let formatter = DateFormatter()
           formatter.dateStyle = .medium
           formatter.timeStyle = .none
           
           //Text field'a date picker'dan gelen değeri yazdırıyoruz.
        myTextField.text = formatter.string(from: datePicker.date)
           
           //Done butonuna bastıktan sonra klavyemizin kapanacağını söylüyruz.
           self.view.endEditing(true)
       }

    
    @objc func buttonTappedFourth(){
        let destVC = ViewController()
        destVC.modalPresentationStyle = .fullScreen
        present(destVC, animated: true )
    }

    
    
}

