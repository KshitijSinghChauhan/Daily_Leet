//
//  13Dec2023.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 14/12/23.
//

import Foundation

class SpecialPositionsInABinaryMatrix {
    func numSpecial(_ mat: [[Int]]) -> Int {
        var m = mat.count, n = mat[0].count, sum = 0
        var row: [Int] = Array(repeating: 0, count: m)
        var column: [Int] = Array(repeating: 0, count: n)
        for i in 0..<m {
            for j in 0..<n {
                if mat[i][j] == 1 {
                    row[i] += 1
                    column[j] += 1
                }
            }
        }
        for i in 0..<m {
            if row[i] == 1 {
                for j in 0..<n {
                    if mat[i][j] == 1 && column[j] == 1 {
                        sum += 1
                        break
                    }
                }
            }
        }
        return sum
    }
}
