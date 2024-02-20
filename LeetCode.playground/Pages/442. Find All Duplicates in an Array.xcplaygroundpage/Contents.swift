import Foundation

//solved at 20.02.2024
class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var array = Array(repeating: 0, count: nums.count)
        var res = [Int]()
        
        for i in nums {
            if array[i - 1] == 1 {res.append(i)}
            else {
                array[i - 1] = 1
            }
        }
        return res
    }
}

let nums = [4,3,2,7,8,2,3,1]
// [2, 3]
print(Solution().findDuplicates(nums))
