//
//  ViewController.swift
//  NavigationTraning
//
//  Created by Sena Kurtak on 4.10.2022.
//
// Bir main sayfası ve menü oluşturun. Menüye tıklandığında menü soldan sağa açılsın. Menüde 4 adet alt alta buton ve label'ı bulunmalıdır. Butonlara tıklandığında ona ait controller'a gitmesi gerekmektedir. Bunların hepsini navigation controller ile gitmesi beklenmektedir. Navigation controller'ın özellikleri title'ı right left barı bulunmalıdır.
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        navigationItem.title = "Home"
        
        let buttonToSecondViewController = UIButton(frame: CGRect(x: 70, y: 120, width: 200, height: 40))
        view.addSubview(buttonToSecondViewController)
        buttonToSecondViewController.setTitle("To Second Controller", for: .normal)
        buttonToSecondViewController.addTarget(self, action: #selector(buttonClickedForSecondVC), for: .touchUpInside )
        
        let buttonToThirdViewController = UIButton(frame: CGRect(x: 100, y: 140, width: 200, height: 40))
        view.addSubview(buttonToThirdViewController)
        buttonToThirdViewController.setTitle("To Third Controller", for: .normal)
        buttonToThirdViewController.addTarget(self, action: #selector(buttonClickedForThirdVC), for: .touchUpInside )
        
        let buttonToFourthViewController = UIButton(frame: CGRect(x: 130, y: 160, width: 200, height: 40))
        view.addSubview(buttonToFourthViewController)
        buttonToFourthViewController.setTitle("To Fourth Controller", for: .normal)
        buttonToFourthViewController.addTarget(self, action: #selector(buttonClickedForFourthVC), for: .touchUpInside )
        
        let buttonToFifthViewController = UIButton(frame: CGRect(x: 160, y: 180, width: 200, height: 40))
        view.addSubview(buttonToFifthViewController)
        buttonToFifthViewController.setTitle("To Fifth Controller", for: .normal)
        buttonToFifthViewController.addTarget(self, action: #selector(buttonClickedForFifthVC), for: .touchUpInside )
    }
    @objc func buttonClickedForSecondVC(){
        let secondController = SecondViewController()
        navigationController?.pushViewController(secondController, animated: true)
    }
    @objc func buttonClickedForThirdVC(){
        let secondController = ThirdViewController()
        navigationController?.pushViewController(secondController, animated: true)
        
    }
    @objc func buttonClickedForFourthVC(){
        let fourthController = FourthViewController()
        navigationController?.pushViewController(fourthController, animated: true)
    }
    @objc func buttonClickedForFifthVC(){
        let fifthController = FifthViewController()
        navigationController?.pushViewController(fifthController, animated: true)
    }
}

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        navigationItem.title = "Second"
        
        
    }
}
class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        navigationItem.title = "Third"
        
    }
}
class FourthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        navigationItem.title = "Fourth"
        
    }
}
class FifthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        navigationItem.title = "Fifth"
        
    }
}
