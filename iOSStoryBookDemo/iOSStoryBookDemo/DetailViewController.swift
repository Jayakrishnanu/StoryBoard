//
//  DetailViewController.swift
//  iOSStoryBookDemo
//
//  Created by Jayakrishnan u on 9/4/20.
//  Copyright © 2020 Jayakrishnan u. All rights reserved.
//

import UIKit
import iOSStoryBook

class DetailViewController: UIViewController {

    @IBOutlet var titleLabel: SBTextLabel!
    @IBOutlet var avatarImageView: SBImageView!
    @IBOutlet var subtitleLabel: SBTextLabel!
    @IBOutlet var userLabel: SBTextLabel!
    @IBOutlet var userNameLabel: SBTextLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = Constants.DetailViewConstant.TitleName
        subtitleLabel.text = Constants.DetailViewConstant.SubTitleName
        userLabel.text = Constants.DetailViewConstant.UserNameDefault
        
        // Do any additional setup after loading the view.
        titleLabel.foregroundColor = Constants.DetailViewConstant.titleTextColor
        titleLabel.textFontSize = Constants.DetailViewConstant.titleFontSize
        titleLabel.isBoldText = Constants.DetailViewConstant.titleIsBoldText
        
        subtitleLabel.foregroundColor = Constants.DetailViewConstant.subTitleTextColor
        subtitleLabel.textFontSize = Constants.DetailViewConstant.subTitleFontSize
        subtitleLabel.isBoldText = Constants.DetailViewConstant.subTitleIsBoldText
        
        userNameLabel.foregroundColor = Constants.DetailViewConstant.userNameTextColor
        userNameLabel.textFontSize = Constants.DetailViewConstant.userNameFontSize
        userNameLabel.isBoldText = Constants.DetailViewConstant.userNameIsBoldText
        
        userLabel.foregroundColor = Constants.DetailViewConstant.userLabelTextColor
        userLabel.textFontSize = Constants.DetailViewConstant.userLabelFontSize
        userLabel.isBoldText = Constants.DetailViewConstant.userLabelIsBoldText
        
        avatarImageView.avatarBackground = Constants.DetailViewConstant.avatarBackgound
        avatarImageView.imageBorder = Constants.DetailViewConstant.imageViewBorder
    }
    
}
