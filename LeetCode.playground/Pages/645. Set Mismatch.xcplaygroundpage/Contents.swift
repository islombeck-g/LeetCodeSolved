import Foundation

//solved at 20.02.2024
class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        
        var array = Array(repeating: 0, count: nums.count)
        var repeadElem = 0
        for i in 0..<nums.count {
            
            if array[nums[i] - 1] == 1 { repeadElem = nums[i] }
            array[nums[i] - 1] = 1
        }
        
        return [repeadElem, array.firstIndex(where: { $0 == 0 })! + 1]
    }
}

let nums = [1,2,2,4]
// [2, 3]
//let nums = [3,2,2]
// [2, 1]
print(Solution().findErrorNums(nums))
