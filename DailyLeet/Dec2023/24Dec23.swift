//
//  24Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 24/12/23.
//

// MARK: - https://leetcode.com/problems/minimum-changes-to-make-alternating-binary-string/description/

import Foundation

class MinimumChangesToMakeAlternatingBinaryString {
    func minOperations(_ s: String) -> Int {
        let array = Array(s)
        var firstWay = 0

        for i in 0..<array.count{
            if array[i] == "1" && i % 2 == 0{
                firstWay += 1
            }
            if array[i] == "0" && i % 2 != 0{
                firstWay += 1
            }
        }

        return min(firstWay, array.count-firstWay)
    }
}
