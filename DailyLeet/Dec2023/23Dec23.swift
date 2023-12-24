//
//  23Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 23/12/23.
//

// MARK: - https://leetcode.com/problems/path-crossing/description/

import Foundation

class PathCrossing {
    func isPathCrossing(_ path: String) -> Bool {
        var points = [[0,0]]
        var curr = [0,0]
        for dir in path {
            switch dir {
            case "N":
                curr[0] += 1
            case "S":
                curr[0] -= 1
            case "E":
                curr[1] += 1
            case "W":
                curr[1] -= 1
            default:
                break
            }
            if points.contains(curr) {
                return true
            } else {
                points.append(curr)
            }
        }
        return false
    }
}
