//
//  Nov25.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 25/11/23.
//

// MARK: https://leetcode.com/problems/sum-of-absolute-differences-in-a-sorted-array/

/*
Input: nums = [2,3,5]
Output: [4,3,5]
Explanation: Assuming the arrays are 0-indexed, then
result[0] = |2-2| + |2-3| + |2-5| = 0 + 1 + 3 = 4,
result[1] = |3-2| + |3-3| + |3-5| = 1 + 0 + 2 = 3,
result[2] = |5-2| + |5-3| + |5-5| = 3 + 2 + 0 = 5.
*/

import Foundation

class SumOfAbsoluteDifferencesInSortedArray {
    func getSumAbsoluteDifferences(_ nums: [Int]) -> [Int] {
        let sum = nums.reduce(0, +)
        var prefixSum = 0
        var resultArr: [Int] = []

        for i in 0..<nums.count {
            // first calculate left side sum from the ith value using prefix sum
            var indexSum = abs((nums[i] * i) - prefixSum)
            // add right side absolute value using suffix sum (sum - prefixSum - nums[i])
            indexSum += abs(nums[i] * (nums.count - (i + 1)) - (sum - prefixSum - nums[i]))
            resultArr.append(indexSum)
            prefixSum += nums[i] // update prefix sum
        }
        return resultArr
    }
}
