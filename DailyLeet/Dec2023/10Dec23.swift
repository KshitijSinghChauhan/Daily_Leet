//
//  10Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 10/12/23.
//

import Foundation

class TransposeMatrix {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        let m = matrix.count
        let n = matrix[0].count
        var arr = Array(repeating: Array(repeating: 0, count: m), count: n)
        for i in 0..<m {
            for j in 0..<n {
                arr[j][i] = matrix[i][j]
            }
        }
        return arr
    }
}
