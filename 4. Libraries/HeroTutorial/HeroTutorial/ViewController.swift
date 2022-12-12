//
//  ViewController.swift
//  HeroTutorial
//
//  Created by Sena Kurtak on 11.10.2022.
//

import UIKit
import Hero

//Projenin main sayfasının sağında, solunda, altında ve üstünde üzerilerinde "sağ", "sol", "yukarı" ve "aşağı" yazısı olan dört adet buton oluşturun.
//Bu butonlara tıklandığında farklı sayfalara geçmeli ve geçişler butonun yazısına göre olmalıdır.
//Örneğin aşağı butonuna tıkladığında sayfa aşağı doğru kayarak gitmelidir.
//Sola tıkladığımızda sola doğru kayarak gitmelidir.

class ViewController: UIViewController {
    
    var buttonTop = UIButton ()
    var buttonLeft = UIButton ()
    var buttonButtom = UIButton ()
    var buttonRight = UIButton ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        setDefaultSize(view: view)
        setUpButtons()
    }
    
    func setUpButtons(){
        buttonTop.setTitle("Top", for: .normal)
        buttonTop.frame = CGRect(x: 0.4 * screenWidth, y: 0.15 * screenHeight, width: 0.2 * screenWidth, height: 0.06 * screenHeight)
        buttonTop.backgroundColor = .red
        buttonTop.setTitleColor(.black, for: .normal)
        buttonTop.addTarget(self, action: #selector(topButtonTapped), for: .touchUpInside)
        view.addSubview(buttonTop)
        
        buttonLeft.setTitle("Left", for: .normal)
        buttonLeft.frame = CGRect(x: 0.1 * screenWidth, y: 0.50 * screenHeight, width: 0.2 * screenWidth, height: 0.06 * screenHeight)
        buttonLeft.backgroundColor = .blue
        buttonLeft.setTitleColor(.black, for: .normal)
        buttonLeft.addTarget(self, action: #selector(leftButtonTapped), for: .touchUpInside)
        view.addSubview(buttonLeft)
        
        buttonRight.setTitle("Right", for: .normal)
        buttonRight.frame = CGRect(x: 0.7 * screenWidth, y: 0.50 * screenHeight, width: 0.2 * screenWidth, height: 0.06 * screenHeight)
        buttonRight.backgroundColor = .cyan
        buttonRight.setTitleColor(.black, for: .normal)
        buttonRight.addTarget(self, action: #selector(rightButtonTapped), for: .touchUpInside)
        view.addSubview(buttonRight)
        
        buttonButtom.setTitle("Buttom", for: .normal)
        buttonButtom.frame = CGRect(x: 0.4 * screenWidth, y: 0.85 * screenHeight, width: 0.2 * screenWidth, height: 0.06 * screenHeight)
        buttonButtom.backgroundColor = .green
        buttonButtom.setTitleColor(.black, for: .normal)
        buttonButtom.addTarget(self, action: #selector(buttomButtonTapped), for: .touchUpInside)
        view.addSubview(buttonButtom)
    }
    
    @objc func topButtonTapped(){
        print("topButtonTapped!")
        let desVC = TopViewController()
        Hero.shared.defaultAnimation = HeroDefaultAnimationType.cover(direction: .up)
        hero.isEnabled = true
        present(desVC, animated: true)
        
    }
    
    
    @objc func leftButtonTapped(){
        
        
        let vc2 = LeftViewController()

        // this enables Hero
        vc2.hero.isEnabled = true

        // this configures the built in animation
        //    vc2.hero.modalAnimationType = .zoom
        //    vc2.hero.modalAnimationType = .pageIn(direction: .left)
        //    vc2.hero.modalAnimationType = .pull(direction: .left)
        //    vc2.hero.modalAnimationType = .autoReverse(presenting: .pageIn(direction: .left))
        vc2.hero.modalAnimationType = .selectBy(presenting: .pull(direction: .right), dismissing: .slide(direction: .down))

        // lastly, present the view controller like normal
        present(vc2, animated: true, completion: nil)

    }
    
    
    
    @objc func buttomButtonTapped(){
        
        
        let vc2 = ButtomViewController()

        // this enables Hero
        vc2.hero.isEnabled = true

        // this configures the built in animation
        //    vc2.hero.modalAnimationType = .zoom
        //    vc2.hero.modalAnimationType = .pageIn(direction: .left)
        //    vc2.hero.modalAnimationType = .pull(direction: .left)
        //    vc2.hero.modalAnimationType = .autoReverse(presenting: .pageIn(direction: .left))
        vc2.hero.modalAnimationType = .selectBy(presenting: .pull(direction: .up), dismissing: .slide(direction: .down))

        // lastly, present the view controller like normal
        present(vc2, animated: true, completion: nil)

    }
    
    
    @objc func rightButtonTapped() {
      let vc2 = RightViewController()

      // this enables Hero
      vc2.hero.isEnabled = true

      // this configures the built in animation
      //    vc2.hero.modalAnimationType = .zoom
      //    vc2.hero.modalAnimationType = .pageIn(direction: .left)
      //    vc2.hero.modalAnimationType = .pull(direction: .left)
      //    vc2.hero.modalAnimationType = .autoReverse(presenting: .pageIn(direction: .left))
      vc2.hero.modalAnimationType = .selectBy(presenting: .pull(direction: .left), dismissing: .slide(direction: .down))

      // lastly, present the view controller like normal
      present(vc2, animated: true, completion: nil)
    }
  }


