//
//  UILabel+Extensions.swift
//  Extensions
//
//  Created by Dave Piernick on 1/25/22.
//  Copyright © 2022 Dave Piernick. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    convenience init(_ translatesMaskIntoConstraints: Bool, _ text: String) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = translatesMaskIntoConstraints
        self.text = text
    }
}
