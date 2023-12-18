//
//  18Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 18/12/23.
//

// MARK: - https://leetcode.com/problems/maximum-product-difference-between-two-pairs/description/

import Foundation

class MaximumProductDifferenceBetweenTwoPairs {
    func maxProductDifference(_ nums: [Int]) -> Int {
        
        // MARK: - SORTING APPROACH
        // var arr = nums.sorted()
        // let n = nums.count
        // return (arr[n-1] * arr[n-2] - arr[0] * arr[1])
        
        
        // MARK: - LINEAR APPROACH
        
        var smallest = 10001
        var secondSmall = 10001
        var largest = 0
        var secondLargest = 0
        
        for num in nums {
            if num >= largest {
                secondLargest = largest
                largest = num
            } else if num >= secondLargest {
                secondLargest = num
            }
            
            if num <= smallest {
                secondSmall = smallest
                smallest = num
            } else if num <= secondSmall {
                secondSmall = num
            }
        }
        
        return largest * secondLargest - smallest * secondSmall
    }
}
