//
//  19Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 19/12/23.
//

// MARK: - https://leetcode.com/problems/image-smoother/description/

import Foundation

class ImageSmoother {
    func imageSmoother(_ img: [[Int]]) -> [[Int]] {
        let m = img.count
        let n = img[0].count
        var arr = Array(repeating: Array(repeating: 0, count: n), count: m)
        for i in 0..<m {
            for j in 0..<n {
                let cells = getCells(row: i, column: j, m: m, n: n)
                arr[i][j] = average(arr: img, cells: cells)
            }
        }
        return arr
    }
    
    private func getCells(row: Int, column: Int, m: Int, n: Int) -> [[Int]] {
        var cells: [[Int]] = [
            [row-1, column-1], [row-1, column], [row-1, column+1],
            [row, column-1], [row, column], [row, column+1],
            [row+1, column-1], [row+1, column], [row+1, column+1]
        ]
        
        return cells.filter({
            ($0[0] >= 0 && $0[0] < m) && ($0[1] >= 0 && $0[1] < n)
        })
    }
    
    private func average(arr: [[Int]], cells: [[Int]]) -> Int {
        var count: Int = 0
        for cell in cells {
            count += arr[cell[0]][cell[1]]
        }
        return Int(floor(Double(count / cells.count)))
    }
}
