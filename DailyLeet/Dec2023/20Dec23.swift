//
//  20Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 20/12/23.
//

// MARK: - https://leetcode.com/problems/buy-two-chocolates/

import Foundation

class BuyTwoChocolates {
    func buyChoco(_ prices: [Int], _ money: Int) -> Int {
        var smallest = 101, secSmallest = 101
        for price in prices {
            if price <= smallest {
                secSmallest = smallest
                smallest = price
            } else if price <= secSmallest {
                secSmallest = price
            }
        }
        smallest += secSmallest - money
        return smallest < 0 ? money : smallest
    }
}
