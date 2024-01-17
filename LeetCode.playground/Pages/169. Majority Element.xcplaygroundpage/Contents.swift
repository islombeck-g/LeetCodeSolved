//: [Previous](@previous)

import Foundation

//solved at 17.01.2024
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dictionary:Dictionary<Int, Int> = [:]
        
        for i in nums {
            dictionary[i, default:0] += 1
        }
        for (key, value) in dictionary {
            if value > nums.count/2 {return key}
        }
        
        return -1
    }
}


let nums = [2,2,1,1,1,2,2]

print(Solution().majorityElement(nums))
