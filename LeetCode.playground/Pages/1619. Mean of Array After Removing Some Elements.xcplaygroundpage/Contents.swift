import Foundation

//solved at 16.01.2024
class Solution {
    func trimMean(_ arr: [Int]) -> Double {
        let sorted = arr.sorted()
        let count = sorted.count / 20
        
        var returnRes = 0
        
        for i in count..<sorted.count - count {
            returnRes += sorted[i]
        }
        
        
        return Double(returnRes)/(Double(sorted.count - 2 * count))
    }
}
let arr = [6,0,7,0,7,5,7,8,3,4,0,7,8,1,6,8,1,1,2,4,8,1,9,5,4,3,8,5,10,8,6,6,1,0,6,10,8,2,3,4]

print(Solution().trimMean(arr))
