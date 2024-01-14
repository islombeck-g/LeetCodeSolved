import Foundation

//solved 14.01.2024
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        
        var array:[Int?] = Array(repeatElement(nil, count: nums.count+1))
        for i in nums { array[i] = 1 }
        return array.firstIndex(of: nil)!
    }
}

let nums = [3,0,1]

print(Solution().missingNumber(nums))
