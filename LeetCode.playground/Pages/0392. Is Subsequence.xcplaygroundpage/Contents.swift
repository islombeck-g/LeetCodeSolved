import Foundation
//submitted 24.12.2023

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard s.count != 0 else { return true}
        let newS = Array(s)
        var index = 0
        let maxIndex = newS.count
        for i in t {
            if i == newS[index] {
                index += 1
                if maxIndex == index {
                    return true
                }
            }
        }
        return maxIndex == index ? true : false
    }
}

let solution = Solution()
let s = "axc", t = "ahbgdc"

print(solution.isSubsequence(s, t))
