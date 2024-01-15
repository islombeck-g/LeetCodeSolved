import Foundation

//solved at 15.01.2024
class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var returnResult:Set<Int> = []
        let set = Set(nums1)

        for i in nums2 {
            if set.contains(i){
                returnResult.insert(i)
            }
        }
        
        return Array(returnResult)
    }
}


//let nums1 = [1,2,2,1], nums2 = [2,2]
let nums1 = [4,9,5], nums2 = [9,4,9,8,4]
print(Solution().intersection(nums1, nums2))
