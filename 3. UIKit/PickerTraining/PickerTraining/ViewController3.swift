//
//  ViewController3.swift
//  PickerTraining
//
//  Created by Sena Kurtak on 3.10.2022.
//

/* Üçüncü sayfanıza iki adet UIImageView tanımlayın. Tıpkı diğer iki sayfa gibi iki ayrı buton ekleyin. Butonlarınızdan birisini, fotoğraf galerisinden diğeri ise kameradan görsel alabilecek UIImagePicker ile ayarlayın. Görsellerle UIImageView'ları konumlandırabilmek için bağlayın ve ekranda fotoğraf çıktılarını gösterin.
 */


import UIKit

class ViewController3: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    var myLabelThree = UILabel()
    var myContinueButtonThree = UIButton()
    
    var imageGallery = UIImageView()
    var imageCamera = UIImageView()
    
    var myButtonFirst = UIButton()
    var myButtonSecond = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view:view)
        setupIUThree()
    }
    
    // MARK: - SENA
    func setupIUThree(){
        
        view.backgroundColor = .blue
        view.addSubview(myLabelThree)
        myLabelThree.text = "Üçüncü Sayfadasın!"
        myLabelThree.center = self.view.center
        myLabelThree.frame = CGRect(x: 0.40 * screenWidth, y: 0.15 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        
        
        
        view.addSubview(myButtonFirst)
        myButtonFirst.setTitle("Photo Gallery", for: .normal)
        myButtonFirst.backgroundColor = .systemPink
        myButtonFirst.frame = CGRect(x: 0.20 * screenWidth, y: 0.40 * screenHeight, width: 0.3 * screenWidth, height: 0.06 * screenHeight)
        myButtonFirst.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        view.addSubview(imageGallery)
        imageGallery.frame = CGRect(x: 0.60 * screenWidth, y: 0.40 * screenHeight, width: 0.3 * screenWidth, height: 0.06 * screenHeight)
        imageGallery.image = UIImage(named:"neon")
        
        view.addSubview(myButtonSecond)
        myButtonSecond.setTitle("Camera", for: .normal)
        myButtonSecond.backgroundColor = .systemPink
        myButtonSecond.frame = CGRect(x: 0.20 * screenWidth, y: 0.60 * screenHeight, width: 0.2 * screenWidth, height: 0.06 * screenHeight)
        myButtonSecond.addTarget(self, action: #selector(openCameraButton), for: .touchUpInside)
        
        view.addSubview(imageCamera)
        imageCamera.frame = CGRect(x: 0.60 * screenWidth, y: 0.60 * screenHeight, width: 0.3 * screenWidth, height: 0.06 * screenHeight)
        imageCamera.image = UIImage(named:"neon")
        
        
        view.addSubview(myContinueButtonThree)
        myContinueButtonThree.frame = CGRect(x: 0.3 * screenWidth, y: 0.80 * screenHeight, width: 0.4 * screenWidth, height: 0.06 * screenHeight)
        myContinueButtonThree.backgroundColor = .blue
        myContinueButtonThree.setTitle("Devam", for: .normal)
        myContinueButtonThree.setTitleColor(.white, for: .normal)
        myContinueButtonThree.addTarget(self, action: #selector(buttonTappedThree), for: .touchUpInside)
    }
    
    @objc func buttonTappedThree(){
        let destVC = ViewController4()
        destVC.modalPresentationStyle = .fullScreen
        destVC.view.backgroundColor = .orange
        present(destVC, animated: true )
        
    }
    
    @objc func openCameraButton(_ sender: UIButton) {
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = .camera
            present(picker, animated: true, completion: nil)
    }

    
    @objc func didTapButton(){
        // FIXME: - SENA2 DUZELTILSIN CALISIYOR
                
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            // Burada imageView'i image a bağlıyor, değerini image kısmına veriyoruz.
            
            imageGallery.image = image
        }
        // kullanıcı işini bitirdiğinde işlem gerçekleşiyor.
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}

