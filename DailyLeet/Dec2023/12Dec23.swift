//
//  12Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 12/12/23.
//

import Foundation

class MaximumProductOfTwoElements {
    func maxProduct(_ nums: [Int]) -> Int {
        // MARK: 1. SORTING
        // var arr = nums.sorted()
        // return (arr[arr.count - 1] - 1) * (arr[arr.count - 2] - 1)
        
        // MARK: 2. LINEAR
        var largest = 0, secLargest = 0
        for num in nums {
            if num > largest {
                secLargest = largest
                largest = num
            } else if num > secLargest {
                secLargest = num
            }
        }
        return (largest - 1) * (secLargest - 1)
    }
}
