//
//  7Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 07/12/23.
//

// https://leetcode.com/problems/largest-odd-number-in-string/description/

import Foundation

class LargestOddNumberInString {
    func largestOddNumber(_ num: String) -> String {
        var number = num
        var oddDigits: [Character] = ["1", "3", "5", "7", "9"]
        while number != "" {
            if let lastDigit = number.last {
                if oddDigits.contains(lastDigit) {
                    return number
                } else {
                    number.removeLast()
                }
            }
        }
        return ""
    }
}
