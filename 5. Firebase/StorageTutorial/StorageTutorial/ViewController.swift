//
//  ViewController.swift
//  StorageTutorial
//
//  Created by Sena Kurtak on 12.10.2022.
//

import UIKit
import FirebaseStorage

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var button = UIButton()
    var imageView = UIImageView()
    var label = UILabel()
    
    private let storage = Storage.storage().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        setUpUI()
    }
    
    func setUpUI(){
        view.addSubview(button)
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Select", for: .normal)
        button.backgroundColor = .cyan
        button.frame = CGRect(x: 145, y: 100, width: 100, height: 20)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        view.addSubview(label)
        label.numberOfLines = 0
        label.textAlignment = .center
        
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
    }
    
    @objc func didTapButton(){
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        picker.allowsEditing = true
        present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        guard let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else {
            return
        }
        
        guard let imageData = image.pngData() else {
            return
        }
                
        storage.child("images/file.png").putData(imageData,
                                                 metadata: nil,
                                                 completion: { _ , error in
                                                    guard error == nil else {
                                                        print("Failed to upload")
                                                        return
                                                    }
                                                    self.storage.child("images/file.png").downloadURL(completion: { url, error in
                                                        guard let url = url, error == nil else {
                                                            return
                                                        }
                                                        let urlString = url.absoluteString
                                                        print("Download URL:\(urlString)")
                                                        UserDefaults.standard.set(urlString, forKey: "url")
            })
        })
        //upload image data
        //get download url
        //save download utl to userDefaults
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
