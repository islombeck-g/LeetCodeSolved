import Foundation

//solved 23.02.2024
class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        
        var returnResult: [String] = []
        var index = 0
        
        while index < nums.count  {
        
            var semiRes = ""
            
            semiRes.append("\(nums[index])")
            if index + 1 < nums.count, nums[index] + 1 == nums[index + 1] {
                semiRes.append("->")
                while index + 1 < nums.count, nums[index] + 1 == nums[index + 1] {
                    index += 1
                }
                semiRes.append("\(nums[index])")
            }
            index += 1
            returnResult.append(semiRes)
        }
        return returnResult
    }
}

//let nums = [0,1,2,4,5,7]
let nums = [0,2,3,4,6,8,9]

print(Solution().summaryRanges(nums))
