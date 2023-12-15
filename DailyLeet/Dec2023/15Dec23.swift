//
//  15Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 15/12/23.
//

// MARK: - https://leetcode.com/problems/destination-city/

import Foundation

class DestinationCity {
    func destCity(_ paths: [[String]]) -> String {
        var cityA: [String] = []
        for index in 0..<paths.count {
            cityA.append(paths[index][0])
        }
        for index in 0..<paths.count {
            if !cityA.contains(paths[index][1]) {
                return paths[index][1]
            }
        }
        return ""
    }
}
