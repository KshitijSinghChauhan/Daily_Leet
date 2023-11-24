//
//  Nov23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 24/11/23.
//

// MARK: https://leetcode.com/problems/arithmetic-subarrays/

import Foundation

class ArithmeticSubarrays {
    func checkArithmeticSubarrays(_ nums: [Int], _ l: [Int], _ r: [Int]) -> [Bool] {
        var result: [Bool] = []
        for index in 0..<l.count {
            // Sort sub array from l and r range.
            let arr = (nums[l[index]...r[index]]).sorted()
            // get Arithemetic mean for current sub array.
            var diff = arr[1] - arr[0]
            for i in 0..<arr.count - 1 {
                if arr[i+1] - arr[i] != diff {
                    result.append(false)
                    break
                }
            }
            /*
                When false is not added for current iteration,
                value will be equal to current index.
                So, append true for such case.
             */
            if result.count == index {
                result.append(true)
            }
        }
        return result
    }
}
