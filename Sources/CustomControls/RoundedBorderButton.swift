//
//  RoundedBorderButton.swift
//  
//
//  Created by Roger Vogel on 1/9/23.
//

import UIKit
import ColorManager
import Extensions

public class RoundedBorderButton: UIButton {

    // MARK: -  INITIALIZATION
    public override func awakeFromNib() {
        
        self.setBorder(width: 1.0, color: UIColor.darkGray.cgColor)
        roundAllCorners(value: 5)
      
        super.awakeFromNib()
    }
    
    public func setBorderColor(color: ColorManager) {
        
        self.setBorder(width: 1.0, color: color.cgcolor)
    }
    
    public func setRadius(value: CGFloat) { roundAllCorners(value: value) }
}

public class RoundedBorderButtonLeft: UIButton {

    // MARK: -  INITIALIZATION
    public override func awakeFromNib() {
        
        self.setBorder(width: 1.0, color: UIColor.darkGray.cgColor)
        roundCorners(corners: .left, radius: 5)
      
        super.awakeFromNib()
    }
    
    public func setBorderColor(color: ColorManager) {
        
        self.setBorder(width: 1.0, color: color.cgcolor)
    }
    
    public func setRadius(value: CGFloat) { roundAllCorners(value: value) }
}

public class RoundedBorderButtonRight: UIButton {

    // MARK: -  INITIALIZATION
    public override func awakeFromNib() {
        
        self.setBorder(width: 1.0, color: UIColor.darkGray.cgColor)
        roundCorners(corners: .right, radius: 5)
      
        super.awakeFromNib()
    }
    
    public func setBorderColor(color: ColorManager) {
        
        self.setBorder(width: 1.0, color: color.cgcolor)
    }
    
    public func setRadius(value: CGFloat) { roundAllCorners(value: value) }
}
