//
//  Dictionary+Extensions.swift
//  Extensions
//
//  Created by Dave Piernick on 1/25/22.
//  Copyright © 2022 Dave Piernick. All rights reserved.
//

import Foundation

extension Dictionary {

 var jsonString: String {
     let invalidJson = "Invalid JSON"
     do {
         let jsonData = try JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)
         return String(data: jsonData, encoding: String.Encoding.utf8) ?? invalidJson
     } catch {
         return invalidJson
     }
 }

 func printJSONString() {
     print(jsonString)
 }
}
