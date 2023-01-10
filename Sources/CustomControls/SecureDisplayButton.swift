//
//  SecureDisplayButton.swift
//  Intersect
//
//  Created by Roger Vogel on 12/23/22.
//  Button to toggle secure entry for a text field

import UIKit
import Extensions

class SecureDisplayButton: UIButton {

    // MARK: - PROPERTES
    var theTextField: UITextField?
    var isSecureEntry: Bool = true
    
    // MARK: - INITIALIZATION
    override func awakeFromNib() {
       
        super.awakeFromNib()
        self.setImage(UIImage(named: "button.text.plain"), for: .normal)
    }
    
    // MARK: - METHODS
    func setTextField(textfield: UITextField) { theTextField = textfield }
    
    func toggle() {
        
        isSecureEntry = !isSecureEntry
        
        if isSecureEntry { self.setImage(UIImage(named: "button.text.plain"), for: .normal) }
        else { self.setImage(UIImage(named: "button.text.secure"), for: .normal) }
        
        theTextField!.isSecureTextEntry = isSecureEntry
    }
}