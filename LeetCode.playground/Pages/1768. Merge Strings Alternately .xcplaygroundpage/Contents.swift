//solved 23.12.2023
import Foundation

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
            
        let firstCount = word1.count
        let secondCount = word2.count
        var min = 0
        var res = ""
        if firstCount > secondCount {
            min = secondCount
        } else {
            min = firstCount
        }
        for i in 0..<min {
            var q = word1[word1.index(word1.startIndex, offsetBy: i)]
            var w = word2[word2.index(word2.startIndex, offsetBy: i)]
            res.append("\(q)\(w)")
        }
        if firstCount > secondCount {
            let remaining = word1[word1.index(word1.startIndex, offsetBy: min)...]
            res.append(contentsOf: remaining)
        } else {
            let remaining = word2[word2.index(word2.startIndex, offsetBy: min)...]
            res.append(contentsOf: remaining)
        }
        return res
    }
}

let solution = Solution()

var word1 = "abc", word2 = "pqr1"

print(solution.mergeAlternately(word1, word2))




