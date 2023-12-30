import Foundation
//solved 30.12.2023

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        var me: Set<Int> = []
        for i in nums {
            if me.contains(i) {
                me.remove(i)
                continue
            }
            me.insert(i)
        }
        return me.first!
    }
}

let nums = [2, 2, 1, 3, 3, 1, 4]

print(Solution().singleNumber(nums))
