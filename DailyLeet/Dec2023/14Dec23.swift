//
//  14Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 15/12/23.
//

import Foundation

class  DifferenceBetweenOnesAndZerosInRowAndColumn {
    func onesMinusZeros(_ grid: [[Int]]) -> [[Int]] {
        let m = grid.count
        let n = grid[0].count
        var row: [Int] = Array(repeating: 0, count: m)
        var column: [Int] = Array(repeating: 0, count: n)
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 1 {
                    row[i] += 1
                    column[j] += 1
                }
            }
        }
        var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
        for i in 0..<m {
            for j in 0..<n {
                // diff[i][j] = onesRowi + onesColj - zerosRowi - zerosColj
                // => diff[i][j] = onesRowi + onesColj - (countRow - onesRowi) - (countCol - onesColj)
                // => diff[i][j] = 2onesRowi + 2onesColj - countRow - countCol
                arr[i][j] = 2 * (row[i] + column[j]) - m - n
            }
        }
        return arr
    }
}
