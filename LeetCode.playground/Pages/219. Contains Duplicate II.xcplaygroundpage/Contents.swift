import Foundation

//solved 16.02.2024
class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        
        var dictionary: Dictionary<Int,[Int]> = [:]
      
        for index in nums.indices {
            dictionary[nums[index], default: []].append(index)
        }
        print(dictionary)
        var res = 100000
        
        for (index, resArr) in dictionary {
            for i in 1..<resArr.count {
                let me = resArr[i] - resArr[i-1]
                if me < res { res = me }
            }
        }
        print(res)
        
        return res <= k
    }
}


//let nums = [1,2,3,1,2,3]
//let k = 2

let nums = [1,0,1,1], k = 1
//let nums = [1,2,3,1,2,3], k = 2
print(Solution().containsNearbyDuplicate(nums, k))
