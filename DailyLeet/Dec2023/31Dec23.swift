//
//  31Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 31/12/23.
//

// MARK: - https://leetcode.com/problems/largest-substring-between-two-equal-characters/description/

import Foundation

class LargestSubstringBetweenTwoEqualCharacters {
    func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
        var dict = [Character: Int]()
        var largest = -1
        for (index,char) in s.enumerated() {
            if let value = dict[char] {
                let diff = index - value - 1
                largest = diff > largest ? diff : largest
            } else {
                dict[char] = index
            }
        }
        return largest
    }
}
