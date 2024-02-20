import Foundation

//solved at 20.02.2024
class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var res = Array(repeating: 0, count: nums.count)
        
        for i in nums {
            res[i - 1] = 1
        }
        
        var resFinal:[Int] = []
        
        for i in res.indices {
            if res[i] == 0 {resFinal.append(i + 1)}
        }
        
        return resFinal
    }
}

let nums = [4,3,2,7,8,2,3,1]

print(Solution().findDisappearedNumbers(nums))
