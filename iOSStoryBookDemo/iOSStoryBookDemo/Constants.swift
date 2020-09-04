//
//  Constants.swift
//  iOSStoryBookDemo
//
//  Created by Jayakrishnan u on 9/4/20.
//  Copyright © 2020 Jayakrishnan u. All rights reserved.
//

import UIKit

struct Constants {
    struct HomeViewConstant {
        static let TitleName = "StoryBook"
        static let UserNamePlaceHolder = "UserName"
        static let UserNameDefault = ""
        static let PasswordPlaceHolder = "Password"
        static let PasswordDefault = ""
        static let ButtonName = "Login"
        
        static let titleForegroundColor = UIColor.hexStringToUIColor(hex: "#ffffff")
        static let titleOutlineColor = UIColor.hexStringToUIColor(hex: "#ff0000")
        static let titleFontSize: CGFloat = 36
        
        static let buttonCornerRadius: CGFloat = 8
        static let buttonLabelColor = UIColor.hexStringToUIColor(hex: "#ffffff")
        static let buttonBgColor =  UIColor.hexStringToUIColor(hex: "#ff0000")
        static let buttonBorderColor = UIColor.hexStringToUIColor(hex: "#000000")
    }
    
    struct DetailViewConstant {
        static let TitleName = "Welcome To StoryBook"
        static let SubTitleName = "Profile"
        static let UserNameDefault = "UserName"
        static let AvatarImage = ""
        
        static let titleTextColor = UIColor.hexStringToUIColor(hex: "#ff0000")
        static let titleFontSize: CGFloat = 36
        static let titleIsBoldText = false
        
        static let subTitleTextColor = UIColor.hexStringToUIColor(hex: "#00ff00")
        static let subTitleFontSize: CGFloat = 24
        static let subTitleIsBoldText = false
        
        static let userNameTextColor = UIColor.hexStringToUIColor(hex: "#000000")
        static let userNameFontSize: CGFloat = 18
        static let userNameIsBoldText = false

        static let userLabelTextColor = UIColor.hexStringToUIColor(hex: "#000000")
        static let userLabelFontSize: CGFloat = 18
        static let userLabelIsBoldText = false
        
        static let avatarBackgound = UIColor.hexStringToUIColor(hex: "#D3D3D3")
        static let imageViewBorder = UIColor.hexStringToUIColor(hex: "#ff0000")
    }
}

extension UIColor {
    static func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
