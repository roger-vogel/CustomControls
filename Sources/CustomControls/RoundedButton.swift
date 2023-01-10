//
//  PRButton.swift
//  PRButton
//
//  Created by Roger Vogel on 9/11/21.
//  Custom button with rounded corners or rounded corners and a border

import UIKit
import ColorManager

public class RoundedButton: UIButton {
    
    // MARK: -  INITIALIZATION
    public override func awakeFromNib() {
        
        roundAllCorners(value: 10)
        super.awakeFromNib()
    }
}
