import Foundation
//25.12.2023

class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        
        var results: [Double] = []
        
        for i in 0..<nums.count {
            if i + k > nums.count {break}
            var sum = 0
            
            for j in i..<i+k {
                sum += nums[j]
            }
            results.append(Double(sum)/Double(k))
        }
        return results.max()!
    }
}
