//
//  UIView+Extensions.swift
//  Extensions
//
//  Created by Dave Piernick on 1/25/22.
//  Copyright © 2022 Dave Piernick. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    convenience init(_ translatesIntoConstraints: Bool) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = translatesIntoConstraints
    }
    
    func addSubviewWithConstraints(_ subview: UIView) {
        self.addSubview(subview)
        NSLayoutConstraint.activate([
            subview.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            subview.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            subview.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            subview.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
