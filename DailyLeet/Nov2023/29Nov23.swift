//
//  29Nov23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 29/11/23.
//

// MARK: https://leetcode.com/problems/number-of-1-bits/

import Foundation

class NumberOf1Bits {
    func hammingWeight(_ n: Int) -> Int {
        /// First way
        // return n == 0 ? 0 : (n & 1) + hammingWeight(n >> 1)

        /// Second way
        // var n = n
        // var result = 0
        // while n != 0 {
        //     result += n & 1
        //     n >>= 1
        // }
        // return result

        /// Third way
        n.nonzeroBitCount
    }
}
