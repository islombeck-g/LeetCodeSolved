import Foundation


//solved at 20.02.2024
class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        
        var set:Set<Int> = []
        
        for i in nums {
            if set.contains(i) {
                return i
            }
            set.insert(i)
        }
        
        return -1
    }
}

let nums = [1,3,4,2,2]

print(Solution().findDuplicate(nums))
