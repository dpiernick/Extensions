//
//  Equatable+Extensions.swift
//  Extensions
//
//  Created by Dave Piernick on 1/25/22.
//  Copyright © 2022 Dave Piernick. All rights reserved.
//

import Foundation

extension Equatable {
    func isOneOf(values: Self...) -> Bool {
        return values.contains(self)
    }
}
