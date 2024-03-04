import Foundation

// solved at 04.03.2024
class Solution {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        var result:[String] = []
        
        let sortedScore = score.sorted(by: >)
        
        for i in 0..<score.count {
            
            if let index = sortedScore.firstIndex(where: {$0 == score[i]}) {
                switch index {
                case 0:
                    result.append("Gold Medal")
                case 1:
                    result.append("Silver Medal")
                case 2:
                    result.append("Bronze Medal")
                default:
                    result.append("\(index + 1)")
                }
            }
        }
        return result
    }
}

//Input: score = [5,4,3,2,1]
//Output: ["Gold Medal","Silver Medal","Bronze Medal","4","5"]
//Explanation: The placements are [1st, 2nd, 3rd, 4th, 5th].

let score = [5,4,3,2,1]

print(Solution().findRelativeRanks(score))
print("finish")
