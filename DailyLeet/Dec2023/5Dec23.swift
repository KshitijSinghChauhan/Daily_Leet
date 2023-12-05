//
//  5Dec23.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 05/12/23.
//

// MARK: https://leetcode.com/problems/count-of-matches-in-tournament

import Foundation

class CountOfMatchesInTournament {
    func numberOfMatches(_ n: Int) -> Int {
        // return n-1
        var teams = n
        var matches: Int = 0
        while teams > 1 {
            if teams % 2 == 0 {
                matches += teams / 2
            } else {
                matches += (teams / 2 + 1)
            }
            teams /= 2
        }
        return matches
    }
}
