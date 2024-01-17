import Foundation
//submitted at 25.12.2023
//updated at 17.01.2024(daily)
class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        
        var numbers: Dictionary<Int, Int> = [:]
        
        for i in arr {
           numbers[i, default: 0] += 1
        }
        
        var defaultSet:Set<Int> = []
        for (_, value) in numbers {
            defaultSet.insert(value)
        }
       
        return numbers.count == defaultSet.count
    }
}

let arr = [1,2]

print(Solution().uniqueOccurrences(arr))
