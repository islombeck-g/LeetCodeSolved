import Foundation

//solved at 23.02.2024
class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var dic1: Dictionary<Int, Int> = [:]
        var dic2: Dictionary<Int, Int> = [:]
        var returnResult:[Int] = []
        
        for i in nums1 {
            dic1[i, default: 0] += 1
        }
        for i in nums2 {
            dic2[i, default: 0] += 1
        }
        print(dic1)
        print(dic2)
        let largeDictionary = dic1.count > dic2.count ? dic1: dic2
        let smallDictionary = dic1.count > dic2.count ? dic2: dic1
        for (key, value) in largeDictionary {
            if smallDictionary.keys.contains(key) {
                let littleCount = smallDictionary[key]! > value ? value : smallDictionary[key]!
                for i in 0..<littleCount {
                    returnResult.append(key)
                }
            }
        }
        return returnResult
    }
}

//let nums1 = [1,2,2,1], nums2 = [2,2]
let nums1 = [4,9,5], nums2 = [9,4,9,8,4]
print(Solution().intersect(nums1, nums2))
