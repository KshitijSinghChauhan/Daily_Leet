//
//  2Jan24.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 02/01/24.
//

// MARK: - https://leetcode.com/problems/convert-an-array-into-a-2d-array-with-conditions/description/

import Foundation

class ConvertAnArrayIntoA2DArray {
    func findMatrix(_ nums: [Int]) -> [[Int]] {
        var dict = [Int: Int]()
        for num in nums {
            dict[num, default: 0] += 1
        }
        var result: [[Int]] = []
        var count = nums.count
        for (key, value) in dict {
            if let value = dict[key], value > 0 {
                for index in 0..<value {
                    if index >= result.count {
                        let arr = [key]
                        result.append(arr)
                    } else {
                        result[index].append(key)
                    }
                }
            }
        }
        return result
    }
}
