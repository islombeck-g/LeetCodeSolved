//submitted 20.12.2023

import Foundation

class Solution {
    func buyChoco(_ prices: [Int], _ money: Int) -> Int {
        guard prices.count >= 2 else { return money}

        var p = prices.sorted()
        if p[0] + p[1] <= money {
            return money - p[0] - p[1]
        }
        return money
    }
}
