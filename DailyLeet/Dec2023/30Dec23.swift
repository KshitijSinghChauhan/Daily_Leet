//
//  30Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 31/12/23.
//

// MARK: - https://leetcode.com/problems/redistribute-characters-to-make-all-strings-equal/

import Foundation

class RedistributeCharactersToMakeAllStringsEqual {
    func makeEqual(_ words: [String]) -> Bool {
        let total = words.joined(separator: "")
        var dict: [Character: Int] = [:]
        for char in total {
            dict[char, default: 0] += 1
        }
        
        for key in dict.keys {
            if let freq = dict[key], freq % words.count != 0 {
                return false
            }
        }
        return true
    }
}
