//
//  SBLabel.swift
//  iOSStoryBook
//
//  Created by Jayakrishnan u on 9/3/20.
//  Copyright © 2020 Jayakrishnan u. All rights reserved.
//

import UIKit

@IBDesignable public class SBLabel: UILabel {
    
    @IBInspectable public var foregroundColor: UIColor = UIColor.white {
        didSet {
            makeOutLine(oulineColor: outlineColor, foregroundColor: foregroundColor)
        }
    }
    
     @IBInspectable public var outlineColor: UIColor = UIColor.red {
        didSet {
            makeOutLine(oulineColor: outlineColor, foregroundColor: foregroundColor)
        }
    }
    
     @IBInspectable public var headingSize: CGFloat = 36 {
        didSet {
           update()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        self.underline()
        self.makeOutLine(oulineColor: outlineColor, foregroundColor: foregroundColor)
    }
    
    func update() {
       self.makeOutLine(oulineColor: outlineColor, foregroundColor: foregroundColor)
    }
    
    func makeOutLine(oulineColor: UIColor, foregroundColor: UIColor) {
        let strokeTextAttributes = [
            NSAttributedString.Key.strokeColor : oulineColor,
            NSAttributedString.Key.foregroundColor : foregroundColor,
            NSAttributedString.Key.strokeWidth : -4.0,
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: headingSize, weight: .bold)
            ] as [NSAttributedString.Key : Any]
        self.attributedText = NSMutableAttributedString(string: self.text ?? "StoryBook", attributes: strokeTextAttributes)
    }
    
    func underline() {
        if let textString = text {
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(   NSAttributedString.Key.underlineStyle,
                                             value: NSUnderlineStyle.single.rawValue,
                                             range: NSRange(location: 0,
                                                            length: attributedString.length))
            attributedText = attributedString
        }
    }
}
