//
//  16Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 16/12/23.
//

import Foundation

class ValidAnagram {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var dict: [Character: Int] = [:]
        for char in s {
            dict[char, default: 0] += 1
        }
        for char in t {
            if let count = dict[char], count > 0 {
                dict[char] = count - 1
            } else {
                return false
            }
        }
        return true
    }
}
