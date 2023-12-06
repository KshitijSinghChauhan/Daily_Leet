//
//  6Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 06/12/23.
//

// MARK: https://leetcode.com/problems/calculate-money-in-leetcode-bank/

import Foundation

class CalculateMoneyInLeetcode {
    func totalMoney(_ n: Int) -> Int {
        var week: Int = 0
        var sum: Int = 0
        for day in 1...n {
            sum += week + (day % 7 == 0 ? 7 : day % 7)
            if day % 7 == 0 {
                week += 1
            }
        }
        return sum
     }
}
