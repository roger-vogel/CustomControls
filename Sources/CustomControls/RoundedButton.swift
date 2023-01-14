//
//  PRButton.swift
//  PRButton
//
//  Created by Roger Vogel on 9/11/21.
//  Custom button with rounded corners or rounded corners and a border

import UIKit
import ColorManager
import Extensions

public class RoundedButton: UIButton {
    
    // MARK: -  INITIALIZATION
    public override func awakeFromNib() {
        
        roundAllCorners(value: 5)
        super.awakeFromNib()
    }
    
    public func setRadius(value: CGFloat) { roundAllCorners(value: value) }
}

public class RoundedButtonLeft: UIButton {
    
    // MARK: -  INITIALIZATION
    public override func awakeFromNib() {
        
        roundCorners(corners: .left, radius: 5)
        super.awakeFromNib()
    }
    
    public func setRadius(value: CGFloat) { roundAllCorners(value: value) }
}

public class RoundedButtonRight: UIButton {
    
    // MARK: -  INITIALIZATION
    public override func awakeFromNib() {
        
        roundCorners(corners: .right, radius: 5)
        super.awakeFromNib()
    }
    
    public func setRadius(value: CGFloat) { roundAllCorners(value: value) }
}
