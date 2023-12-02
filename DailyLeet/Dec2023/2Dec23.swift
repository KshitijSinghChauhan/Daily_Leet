//
//  2Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 03/12/23.
//

// MARK: https://leetcode.com/problems/find-words-that-can-be-formed-by-characters
// Swift Easy Simple understandable code without using dictionary or hash table (LCS approach)

import Foundation

class FindWordsFormedByCharacters {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var sum: Int = 0
        let sortedChar = Array(chars).sorted()
        let sortedArrayCount = sortedChar.count
        for word in words {
            if word.count > sortedArrayCount { continue }
            sum += matchCharacters(Array(word).sorted(), sortedChar)
        }
        return sum
    }

    private func matchCharacters(_ word: [Character], _ chars: [Character]) -> Int {
        var m = word.count
        var n = chars.count
        while m > 0 && n > 0 {
            // If both characters are same, move backwards on both array
            if word[m-1] == chars[n-1] {
                m -= 1
                n -= 1
            } else { // move back only on character array
                n -= 1
            }
        }
        // if reached last index on word array, means all chars are present
        return m == 0 ? word.count : 0
    }
}
