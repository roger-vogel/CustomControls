//
//  RoundedTextField.swift
//  Intersect
//
//  Created by Roger Vogel on 12/22/22.
//  Custom text field with rounded corners

import UIKit
import Extensions

public class RoundedTextField: UITextField {

    // MARK: -  INITIALIZATION
    public override func awakeFromNib() {
        
        super.awakeFromNib()
      
        // Set left padding
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        self.leftViewMode = .always
      
        // Set right padding
        self.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        self.rightViewMode = .always
        
        // Round text field corners
        self.roundAllCorners(value: 8)
    }
}
