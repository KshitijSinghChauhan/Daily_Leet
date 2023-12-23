//
//  22Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 22/12/23.
//

// MARK: - https://leetcode.com/problems/maximum-score-after-splitting-a-string/description/

import Foundation

class MaximumScoreAfterSplittingAString {
    func maxScore(_ s: String) -> Int {
        let chars = Array(s)
        return getMax(s: chars, n: chars.count - 1)
    }
    private func getMax(s: [Character], n: Int) -> Int {
        if n == 0 {
            return 0
        }
        let first = s[0..<n]
        let second = s[n...]
        var count = 0
        for zero in first {
            if String(zero) == "0" { count += 1}
        }
        for ones in second {
            if String(ones) == "1" { count += 1}
        }
        return max(count, getMax(s: s, n: n - 1))
    }
}
