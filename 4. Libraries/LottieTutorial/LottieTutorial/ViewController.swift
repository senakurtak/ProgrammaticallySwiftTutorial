//
//  ViewController.swift
//  LottieTutorial
//
//  Created by Sena Kurtak on 10.10.2022.
//
/*  Lottie kütüphanesini kullanarak launch screen görünümünde bir sayfa hazırlayın
 
 "yükleniyor" görünümü veren bu sayfa 6 saniye sonra "Anasayfaya yönlendiriliyorsunuz" yazısı gelmeli ve kendiliğinden main sayfasına gitmelidir. Main sayfasında bir butona durdur ve başlat aksiyonu ekleyip tıkladığımızda lottie'nin play-pause olması gerekmektedir.*/

import UIKit
import Lottie

class ViewController: UIViewController {
    
    var animationView = AnimationView()
    var label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAnimation()
        showLabel()
    }
    
    func setUpAnimation(){
        animationView.animation = Animation.named("97930-loading")
        animationView.frame = CGRect(x: 0, y: 0, width: 500, height: 500)
        animationView.center = view.center
        view.backgroundColor = .white
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        
        AnimationView.animate(withDuration: 2, animations: {
        }, completion: { done in
            if done {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3 , execute: {
                    let vc = HomeViewController()
                    vc.modalTransitionStyle = .crossDissolve
                    vc.modalPresentationStyle = .fullScreen
                    self.present(vc, animated: true)
                }
                                              
                )
            }
        }
        )
        
        
    }
    func showLabel(){
        label.frame = CGRect(x: screenWidth * 0.3, y: screenHeight * 0.4, width: screenWidth * 0.4, height: screenHeight * 0.2 )
        view.addSubview(label)
        label.textColor = .black
        view.addSubview(label)
        DispatchQueue.main.asyncAfter(deadline: .now() + 4 , execute: { [self] in
            label.text = "Ana sayfaya gider"
            print("success!")
        }
        )
    }
    
}


