import Foundation
// submitted 24.12.2023

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        
        var result: [Bool] = []
        let candiesCount = candies.max()!
        for i in candies {
            if i + extraCandies >= candiesCount {
                result.append(true)
            } else {
                result.append(false)
            }
        }
        
        return result
    }
}
