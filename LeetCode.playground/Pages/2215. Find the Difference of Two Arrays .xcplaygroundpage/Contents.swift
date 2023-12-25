import Foundation
//submitted 25.12.2023
class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
       
        let first = Set(nums1)
        let second = Set(nums2)
        var res:[Int] = []
        var res1: [Int] = []
        
        for i in first {
            if !second.contains(i) {
                res.append(i)
            }
        }
        for j in second {
            if !first.contains(j) {
                res1.append(j)
            }
        }
        return [res, res1]
    }
}
