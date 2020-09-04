//
//  SBImageView.swift
//  iOSStoryBook
//
//  Created by Jayakrishnan u on 9/3/20.
//  Copyright © 2020 Jayakrishnan u. All rights reserved.
//

import UIKit

@IBDesignable public class SBImageView: UIImageView {
    
    @IBInspectable public var imageBorder: UIColor = UIColor.gray {
        didSet {
            layoutSubviews()
        }
    }

    @IBInspectable public var avatarBackground: UIColor = UIColor.blue {
        didSet {
            layoutSubviews()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.borderColor = imageBorder.cgColor
        self.frame.size = CGSize(width: 120, height: 120)
        self.layer.cornerRadius = self.frame.size.width * 0.5
        self.layer.backgroundColor = avatarBackground.cgColor
        self.clipsToBounds = true
    }
}
