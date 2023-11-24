//
//  Nov24.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 24/11/23.
//

// MARK: https://leetcode.com/problems/maximum-number-of-coins-you-can-get/

import Foundation

class MaximumNumberCoinsYouCanGet {
    func maxCoins(_ piles: [Int]) -> Int {
        let arr = piles.sorted()
        if arr.count <= 3 { return arr[1] }
        var lower = 0
        var upper = arr.count - 1
        var sum: Int = 0
        while (upper > lower) {
            sum += arr[upper - 1]
            upper -= 2
            lower += 1
        }
        return sum
    }
}
