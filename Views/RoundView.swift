//
//  RoundView.swift
//  Extensions
//
//  Created by Dave Piernick on 1/25/22.
//  Copyright © 2022 Dave Piernick. All rights reserved.
//

import Foundation
import UIKit

class RoundView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.width/2
    }
    
}
