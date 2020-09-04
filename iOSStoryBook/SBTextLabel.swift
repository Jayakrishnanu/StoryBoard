//
//  SBTextLabel.swift
//  iOSStoryBook
//
//  Created by Jayakrishnan u on 9/4/20.
//  Copyright © 2020 Jayakrishnan u. All rights reserved.
//

import UIKit

@IBDesignable public class SBTextLabel :UILabel {
    
    @IBInspectable public var foregroundColor: UIColor = UIColor.black {
        didSet {
            commonInit()
        }
    }
    
    @IBInspectable public var textFontSize: CGFloat = 16 {
        didSet {
            self.font = self.font.withSize(textFontSize)
        }
    }
    
    @IBInspectable public var isBoldText: Bool = false {
        didSet {
            makeOutLine(foregroundColor: foregroundColor)
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
        self.makeOutLine(foregroundColor: foregroundColor)
    }
    
    func makeOutLine(foregroundColor: UIColor) {
        self.textColor = foregroundColor
        let strokeTextAttributes = [
            NSAttributedString.Key.foregroundColor: foregroundColor,
            NSAttributedString.Key.font : isBoldText ? UIFont.boldSystemFont(ofSize: textFontSize): UIFont.systemFont(ofSize: textFontSize)
            ] as [NSAttributedString.Key : Any]
        self.attributedText = NSMutableAttributedString(string: self.text ?? "", attributes: strokeTextAttributes)
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
