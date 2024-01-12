import Foundation

//submitted at 12.01.2024
class Solution {
    func largeGroupPositions(_ s: String) -> [[Int]] {
        let newArray = Array(s)
        print(newArray)
        print(s)
        var returnResult:[[Int]] = []
        var startIndex = 0
        var endIndex = 0
        var count = 0
        var curElem:Character?
        
        for i in 0..<newArray.count {
            
            if curElem == newArray[i] {
                count += 1
                print("curElem = \(curElem!), count = \(count)")
                continue
            }
            if count > 2 {
                returnResult.append([startIndex, i-1])
            }
            startIndex = i
            curElem = newArray[i]
            count = 1
        }
        if count > 2 {
            returnResult.append([startIndex, newArray.count-1])
        }
        return returnResult
    }
}


let s = "abcdddeeeeaabbbcd"
let s1 = "bababbabaa"

print(Solution().largeGroupPositions(s1))
