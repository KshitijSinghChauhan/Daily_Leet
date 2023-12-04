//
//  4Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 05/12/23.
//

// MARK: https://leetcode.com/problems/largest-3-same-digit-number-in-string/description

import Foundation

class Largest3SameDigitNumberInString {
    func largestGoodInteger(_ num: String) -> String {
        var result: String?
        let arr = Array(num)
        for i in 0..<(num.count - 2) {
            if arr[i] == arr[i+1] && arr[i+1] == arr[i+2] {
                let value = (String(arr[i]) + String(arr[i+1]) + String(arr[i+2]))
                if Int(result ?? "0") ?? 0 <= Int(value) ?? 0 {
                    result = value
                }
            }
        }
        return result ?? "Hi"
    }
}
