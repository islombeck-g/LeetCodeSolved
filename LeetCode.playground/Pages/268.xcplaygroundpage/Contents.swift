import Foundation

//solved 20.02.2024
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        
        var array:[Int] = Array(repeating: 0, count: nums.count + 1)
    
        for i in nums {
            array[i] = 1
        }
        return array.firstIndex(of: 0) ?? nums.count
    }
}

let nums = [3,0,1]
print(Solution().missingNumber(nums))
