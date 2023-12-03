//
//  3Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 04/12/23.
//

// MARK: https://leetcode.com/problems/minimum-time-visiting-all-points/description

import Foundation
class  MinimumTimeVisitingAllPoints {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int
    {
        var count = 0
        var lastPoint = points[0]
        for point in points[1...]
        {
            count += max(abs(point[0] - lastPoint[0]), abs(point[1] - lastPoint[1]))
            lastPoint = point
        }
        return count
    }
}
