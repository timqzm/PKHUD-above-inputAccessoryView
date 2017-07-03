//
//  ViewController.swift
//  InputAcceessoryViewVsPKHUD
//
//  Created by Tim on 03/07/2017.
//  Copyright © 2017 AGAT. All rights reserved.
//

import PKHUD

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    var activeTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        
        let customView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 44))
        customView.backgroundColor = .red
        textField?.inputAccessoryView = customView
    }
    
    @IBAction func logIn(_ sender: Any) {
        HUD.flash(.labeledError(title: "blabla", subtitle: "blablalba"),
                  onView: activeTextField?.inputAccessoryView,
                  delay: 1.0)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activeTextField = textField // if keyboard is shown, show HUD.flash under inputAccessoryView
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        activeTextField = nil // if keyboard isn't shown, just show simple HUD.flash
    }

}

