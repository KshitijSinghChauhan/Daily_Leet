//
//  1Jan24.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 01/01/24.
//

// MARK: - https://leetcode.com/problems/assign-cookies/description/

import Foundation

class AssignCookies {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var children = g.sorted()
        var greedFactor = s.sorted()
        var childIndex = 0
        for index in 0..<greedFactor.count {
            if childIndex == children.count { return childIndex }
            if greedFactor[index] < children[childIndex] {
                continue
            } else {
                childIndex += 1
            }
        }
        return childIndex
    }
}
