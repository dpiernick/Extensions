//
//  UIColor+Extensions.swift
//  Extensions
//
//  Created by Dave Piernick on 1/25/22.
//  Copyright © 2022 Dave Piernick. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    static func dynamicColor(lightModeColor: UIColor, darkModeColor: UIColor) -> UIColor {
        return UIColor { (traits) -> UIColor in
            return traits.userInterfaceStyle == .dark ? darkModeColor : lightModeColor
        }
    }
    
    static func gray(rgbValue: CGFloat) -> UIColor {
        return UIColor(red: rgbValue / 255.0, green: rgbValue / 255.0, blue: rgbValue / 255.0, alpha: 1)
    }
    
    class var backgroundPrimary: UIColor {
        return UIColor(named: "BackgroundPrimary")!
    }
    
    var lightModeColor: UIColor {
        return self.resolvedColor(with: .init(userInterfaceStyle: .light))
    }
    
    var darkModeColor: UIColor {
        return self.resolvedColor(with: .init(userInterfaceStyle: .dark))
    }
    
    var reversedDarkAndLightModeColor: UIColor {
        
        let currentDarkModeColor = self.resolvedColor(with: .init(userInterfaceStyle: .dark))
        let currentLightModeColor = self.resolvedColor(with: .init(userInterfaceStyle: .light))
        
        return UIColor { traits -> UIColor in
            
            return traits.userInterfaceStyle == .dark ? currentLightModeColor: currentDarkModeColor
        }
    }
    
    class var green141: UIColor {
        return UIColor(named: "Green141")!
    }
}
