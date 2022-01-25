//
//  Double+Extensions.swift
//  Extensions
//
//  Created by Dave Piernick on 1/25/22.
//  Copyright © 2022 Dave Piernick. All rights reserved.
//

import Foundation

extension Double {
 func dollarFormattedDouble() -> String {
     let doubleValue = Double(self)
     let formatter = NumberFormatter()
     formatter.currencyCode = "USD"
     formatter.currencySymbol = "$"
     formatter.maximumFractionDigits = 0
     formatter.numberStyle = .currencyAccounting
     return formatter.string(from: NSNumber(value: doubleValue)) ?? "$\(doubleValue)"
 }

 func roundedTo(decimalPlaces: Int) -> Double {
     let divisor = pow(10.0, Double(decimalPlaces))
     return ((self * divisor).rounded())/divisor
 }

 func roundedToInt() -> Int {
     return Int(self.rounded())
 }

 var isInt: Bool {
     return floor(self) == self
 }

 var commaSeparated: String? {
     let numberFormatter = NumberFormatter()
     numberFormatter.numberStyle = .decimal
     return numberFormatter.string(from: NSNumber(value: self))
 }
}
