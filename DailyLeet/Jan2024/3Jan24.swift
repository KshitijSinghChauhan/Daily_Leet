//
//  3Jan24.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 03/01/24.
//

// MARK: - https://leetcode.com/problems/number-of-laser-beams-in-a-bank

import Foundation

class NumberOfLaserBeamsInABank {
    func numberOfBeams(_ bank: [String]) -> Int {
        var totalCount: Int = 0
        var tempCount = bank[0].countOf("1")
        for index in 1..<bank.count {
            let count = bank[index].countOf("1")
            if count > 0 {
                totalCount += tempCount * count
                tempCount = count
            }
        }
        return totalCount
    }
}

extension String {
    func countOf(_ character: Character) -> Int {
        var count: Int = 0
        for char in self {
            if char == character { count += 1 }
        }
        return count
    }
}
