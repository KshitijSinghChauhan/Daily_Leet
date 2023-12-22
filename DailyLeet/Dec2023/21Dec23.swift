//
//  21Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 22/12/23.
//

// MARK: - https://leetcode.com/problems/widest-vertical-area-between-two-points-containing-no-points/description/

import Foundation

class WidestVerticalAreaBetweenTwoPoints {
    func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
        var arr: [Int] = []
        points.forEach({
            arr.append($0[0])
        })
        arr.sort()
        var max = 0
        for index in 0..<arr.count - 1 {
            let diff = arr[index + 1] - arr[index]
            if diff > max {
                max = diff
            }
        }
        return max
    }
}
