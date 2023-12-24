import Foundation
//submitted 24.12.2023
class Solution {
    
    func isSorted(_ array: inout [Int]) -> Bool {
        for i in 1..<array.count {
            if array[i-1] > array[i] {
                return false
            }
        }
        return true
    }
    func check(_ nums: [Int]) -> Bool {
        
        var numsCopy = nums
        for _ in 0..<nums.count {
            if isSorted(&numsCopy) {
                return true
            }
            let last = numsCopy.removeLast()
            numsCopy.insert(last, at: 0)
        }
        return false
    }
}


var solution = Solution()

let nums = [3,4,5,1,2]

print(solution.check(nums))

