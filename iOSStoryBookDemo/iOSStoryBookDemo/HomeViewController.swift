//
//  ViewController.swift
//  iOSStoryBookDemo
//
//  Created by Jayakrishnan u on 9/3/20.
//  Copyright © 2020 Jayakrishnan u. All rights reserved.
//

import UIKit
import iOSStoryBook

class HomeViewController: UIViewController {
    
    @IBOutlet var titleLabel: SBLabel!
    @IBOutlet var userNameTextField: SBTextField!
    @IBOutlet var passwordTextField: SBTextField!
    @IBOutlet var loginButton: SBButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameTextField.delegate = self
        passwordTextField.delegate = self
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        
        
        // Do any additional setup after loading the view.
        titleLabel.text = Constants.HomeViewConstant.TitleName
        userNameTextField.text = Constants.HomeViewConstant.UserNameDefault
        userNameTextField.placeholder = Constants.HomeViewConstant.UserNamePlaceHolder
        passwordTextField.text = Constants.HomeViewConstant.PasswordDefault
        passwordTextField.placeholder = Constants.HomeViewConstant.PasswordPlaceHolder
        
        titleLabel.foregroundColor = Constants.HomeViewConstant.titleForegroundColor
        titleLabel.outlineColor = Constants.HomeViewConstant.titleOutlineColor
        titleLabel.headingSize = Constants.HomeViewConstant.titleFontSize

        loginButton.cornerRadius = Constants.HomeViewConstant.buttonCornerRadius
        loginButton.labelColor = Constants.HomeViewConstant.buttonLabelColor
        loginButton.bgColor = Constants.HomeViewConstant.buttonBgColor
        loginButton.borderColor = Constants.HomeViewConstant.buttonBorderColor
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

extension HomeViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    /**
    * Called when the user click on the view (outside the UITextField).
    */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

}

