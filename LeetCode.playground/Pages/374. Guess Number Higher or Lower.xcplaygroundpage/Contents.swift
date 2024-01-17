import Foundation

/**
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return          -1 if num is higher than the picked number
 *                  1 if num is lower than the picked number
 *               otherwise return 0
 * func guess(_ num: Int) -> Int
 */
//solved at 17.01.2024
class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
       
        var left = 0, right = n
        
        while left < right {
            let middle = (left + right) / 2
            
            let me = guess(middle)
            
            switch me {
            case -1:
                right = middle - 1
            case 1:
                left = middle + 1
            case 0:
                return me
            }
        }
    }
}

