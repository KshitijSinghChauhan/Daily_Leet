//
//  11Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 11/12/23.
//

// MARK: - https://leetcode.com/problems/element-appearing-more-than-25-in-sorted-array/description/

import Foundation

class ElementAppearingMoreThan25Percent {
    func findSpecialInteger(_ arr: [Int]) -> Int {
        if arr.count <= 2 {
            return arr[0]
        }
        for index in 0..<arr.count {
            if arr[index] == arr[(index + (arr.count / 4))] {
                return arr[index]
            }
        }
        return 0
    }
}
