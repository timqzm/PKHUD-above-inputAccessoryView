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
    let customView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 44))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.backgroundColor = .red
        textField?.inputAccessoryView = customView
    }
    
    @IBAction func logIn(_ sender: Any) {
        HUD.flash(.labeledError(title: "blabla", subtitle: "blablalba"),
                  onView: UIApplication.shared.windows.last,
                  delay: 1.0)
    }

}

