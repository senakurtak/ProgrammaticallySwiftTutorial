//
//  ViewController.swift
//  AlertControllers
//
//  Created by Sena Kurtak on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var mySimpleAlertButton = UIButton()
    var myOkayCancelActionButton = UIButton()
    var myAlertwithTextField = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSize(view: view)
        setupUI()
    }
    
    func setupUI(){
        
        view.backgroundColor = .gray
        
        view.addSubview(mySimpleAlertButton)
        mySimpleAlertButton.frame = CGRect(x: 0.3 * screenWidth, y: 0.15 * screenHeight, width: 0.4 * screenWidth, height: 0.06 * screenHeight)
        mySimpleAlertButton.addTarget(self, action: #selector(mySimpleAlertFunction), for: .touchUpInside)
        mySimpleAlertButton.backgroundColor = .green
        mySimpleAlertButton.setTitle("Simple", for: .normal)
        mySimpleAlertButton.setTitleColor(.black, for: .normal)
        
        view.addSubview(myOkayCancelActionButton)
        myOkayCancelActionButton.frame = CGRect(x: 0.3 * screenWidth, y: 0.30 * screenHeight, width: 0.4 * screenWidth, height: 0.06 * screenHeight)
        myOkayCancelActionButton.addTarget(self, action: #selector(myShowOkayCancelActionFunction), for: .touchUpInside)
        myOkayCancelActionButton.backgroundColor = .red
        myOkayCancelActionButton.setTitle("Simple Action Sheet", for: .normal)
        myOkayCancelActionButton.setTitleColor(.black, for: .normal)
        
        view.addSubview(myAlertwithTextField)
        myAlertwithTextField.frame = CGRect(x: 0.25 * screenWidth, y: 0.45 * screenHeight, width: 0.5 * screenWidth, height: 0.06 * screenHeight)
        myAlertwithTextField.addTarget(self, action: #selector(myAlertwithTextFieldFunction), for: .touchUpInside)
        myAlertwithTextField.backgroundColor = .yellow
        myAlertwithTextField.setTitle("Alert with UITextField", for: .normal)
        myAlertwithTextField.setTitleColor(.black, for: .normal)
        
        
    }
    
    @objc func mySimpleAlertFunction(){
        var mySimpleAlert = UIAlertController(title: "Simple Alert", message: "This is a simple alert example", preferredStyle: .alert)
        mySimpleAlert.addAction(UIAlertAction(title: "Got it!", style: .default, handler: nil))
        self.present(mySimpleAlert, animated: true)
    }
    
    @objc func myShowOkayCancelActionFunction() {
        let message = NSLocalizedString("A message needs to be a short, complete sentence.", comment: "")
        let cancelButtonTitle = NSLocalizedString("Cancel", comment: "")
        let destructiveButtonTitle = NSLocalizedString("Confirm", comment: "")
        
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .actionSheet)
        
        // Create the actions.
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .cancel) { _ in
            Swift.debugPrint("The \"OK/Cancel\" alert action sheet's cancel action occurred.")
        }
        
        let destructiveAction = UIAlertAction(title: destructiveButtonTitle, style: .default) { _ in
            Swift.debugPrint("The \"Confirm\" alert action sheet's destructive action occurred.")
        }
        
        // Add the actions.
        alertController.addAction(cancelAction)
        alertController.addAction(destructiveAction)
        
        // Configure the alert controller's popover presentation controller if it has one.
        
        present(alertController, animated: true, completion: nil)
    }
    
    @objc func myAlertwithTextFieldFunction() {
        let title = NSLocalizedString("Alert with UITextField", comment: "")
        let message = NSLocalizedString("This is an Alert with UITextField example.", comment: "")
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Add the text field for text entry.
        alertController.addTextField { _ in
            // If you need to customize the text field, you can do so here.
        }
        
        // Create the actions.
        let cancelButtonTitle = NSLocalizedString("Cancel", comment: "")
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .cancel) { _ in
            Swift.debugPrint("The \"Text Entry\" alert's cancel action occurred.")
        }
        
        let otherButtonTitle = NSLocalizedString("OK", comment: "")
        let otherAction = UIAlertAction(title: otherButtonTitle, style: .default) { _ in
            Swift.debugPrint("The \"Text Entry\" alert's other action occurred.")
        }
        
        // Add the actions.
        alertController.addAction(cancelAction)
        alertController.addAction(otherAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
}
