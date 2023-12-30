import Foundation
//solved 30.12.2023

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        var dic: Dictionary<Int, Int> = [:]
        for i in nums {
            if dic.contains{ $0.key == i} {
                
                dic.updateValue(dic[i]! + 1, forKey: i)
                continue
            }
            dic[i] = 1
        }

        for (key, value) in dic {
            if value == 1 {
                return key
            }
        }
        return -1
    }
}
