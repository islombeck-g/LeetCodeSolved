import Foundation
//submitted at 25.12.2023

class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        
        
        var numbers: Dictionary<Int, Int> = [:]
        
        for i in arr {
            if let val = numbers[i] {
                numbers[i]! += 1
                continue
            }
            numbers[i] = 1
        }
        var count:Set<Int> = []
        for (key, value) in numbers {
            count.insert(value)
        }
       
        return numbers.count == count.count
    }
}

let arr = [1,2]

print(Solution().uniqueOccurrences(arr))
