import Foundation

//solved at 16.01.2024
class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        
        let newNums = Array(Set(nums)).sorted(by: <)
        print(newNums)
        if nums.count > 2 {
            return newNums[newNums.count - 3]
        }
        return newNums.last ?? 0
    }
}

let nums = [1, 2, 2, 3]

print(Solution().thirdMax(nums))
